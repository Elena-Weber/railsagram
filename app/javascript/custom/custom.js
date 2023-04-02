import * as FilePond from "filepond";
import FilePondPluginImagePreview from 'filepond-plugin-image-preview';
import FilePondPluginFileValidateType from 'filepond-plugin-file-validate-type';
import FilePondPluginFileValidateSize from 'filepond-plugin-file-validate-size';

document.addEventListener("turbo:load", loadFilePond);

function loadFilePond() {
  FilePond.registerPlugin(
    FilePondPluginImagePreview,
    FilePondPluginFileValidateType,
    FilePondPluginFileValidateSize
  );
  
  FilePond.create(
    document.querySelector("#post-images"),
    {
      credits: {},
      storeAsFile: true,
      allowMultiple: true,
      allowReorder: true,
      allowImagePreview: true,
      allowFileTypeValidation: true,
      acceptedFileTypes: ["image/*"],
      allowFileSizeValidation: true,
      maxFileSize: '5MB'
  });
}