import { Controller } from "@hotwired/stimulus";
import EditorJS from "@editorjs/editorjs";

// Import tools
import Header from "@editorjs/header";
import ImageTool from "@editorjs/image";
import Link from "@editorjs/link";
import List from "@editorjs/list";
import Paragraph from "@editorjs/paragraph";
import Table from "@editorjs/table";

// Connects to data-controller="editor"
export default class extends Controller {
  static targets = ["magnet_content"];

  connect() {
    const initialContent = this.element.dataset.editorInitialContent
      ? JSON.parse(this.element.dataset.editorInitialContent)
      : {};

    this.contentEditor = new EditorJS({
      holder: this.magnet_contentTarget,
      tools: {
        header: {
          class: Header,
          inlineToolbar: true,
        },
        image: {
          class: ImageTool,
          inlineToolbar: true,
        },
        link: {
          class: Link,
          inlineToolbar: true,
        },
        list: {
          class: List,
          inlineToolbar: true,
        },
        paragraph: {
          class: Paragraph,
          inlineToolbar: true,
        },
        table: {
          class: Table,
          inlineToolbar: true,
        },
      },
      data: initialContent,
    });
  }
}
