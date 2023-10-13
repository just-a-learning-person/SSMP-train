package com.itheima.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.itheima.controller.utils.R;
import com.itheima.domain.Book;
import com.itheima.service.IBookService;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/books")
public class BookController {
    @Autowired
    private IBookService bookService;
    @GetMapping
    public R getAll() {
        return new R(true, bookService.list());
    }
    @PostMapping
    public R save(@RequestBody Book book)  {
        boolean flag = bookService.save(book);
        return new R(flag, flag ? "添加成功^_^" : "添加失败-_-!");
    }
    @PutMapping
    public R update(@RequestBody Book book) {
        return new R(bookService.modify(book));
    }
    @DeleteMapping("{id}")
    public R delete(@PathVariable Integer id) {
        return new R(bookService.delete(id));
    }
    @GetMapping("{id}")
    public R getByID(@PathVariable Integer id) {
        return new R(true, bookService.getById(id));
    }
//    @GetMapping("{currentPage}/{pageSize}")
//    public R getPage(@PathVariable int currentPage, @PathVariable int pageSize) {
//        IPage<Book> page = bookService.getPage(currentPage, pageSize);
//        if (currentPage > page.getPages()) {
//            page = bookService.getPage((int)page.getPages(), pageSize);
//        }
//        return new R(true, page);
//    }

    @GetMapping("{currentPage}/{pageSize}")
    public R getPage(@PathVariable int currentPage, @PathVariable int pageSize,Book book) {
        System.out.println("book==>" + book);
        IPage<Book> page = bookService.getPage(currentPage, pageSize, book);
        if (currentPage > page.getPages()) {
            page = bookService.getPage((int) page.getPages(), pageSize, book);
        }
        return new R(true, page);
    }
}
