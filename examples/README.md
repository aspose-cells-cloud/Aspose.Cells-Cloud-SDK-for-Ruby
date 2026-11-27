# Aspose.Cells Cloud Ruby SDK examples

These examples mirror the Python SDK examples and target the new-model v4.0
API. They run against `sdks/ruby_sdk` and use the hand-written facades or the
generated request classes.

The examples live in the repository, not in the published Ruby gem.

## Prerequisites

```bash
export CellsCloudClientId=your-client-id
export CellsCloudClientSecret=your-client-secret
# Optional; defaults to https://api.aspose.cloud
export CellsCloudApiBaseUrl=https://api.aspose.cloud
```

PowerShell:

```powershell
$env:CellsCloudClientId = "your-client-id"
$env:CellsCloudClientSecret = "your-client-secret"
```

`ProductClientId` / `ProductClientSecret` are accepted as aliases.

## Running

From this directory:

```bash
cd examples
ruby Example_QuickStart.rb
ruby Example_ConvertWorkbook.rb
ruby Example_StorageManagement.rb
ruby Example_WorksheetManagement.rb
ruby Example_MergeWorkbooks.rb
ruby Example_SplitWorkbook.rb
ruby Example_TextProcessing.rb
ruby Example_Protection.rb
ruby Example_GetWorksheetCell.rb
ruby Example_CalculateFormula.rb
```

`_common.rb` puts the SDK `lib` directory on the load path, so the examples
work without installing the gem. Outputs are written to `examples/output/`
(git-ignored); cloud examples use the `RubySDKExamples` folder.

## Sample map

| Example | What it shows |
| --- | --- |
| `Example_QuickStart.rb` | `Converter.convert` local xlsx -> PDF |
| `Example_ConvertWorkbook.rb` | Local PDF/CSV, cloud workbook and worksheet export |
| `Example_StorageManagement.rb` | Upload, list, download, delete storage files |
| `Example_WorksheetManagement.rb` | Create/add/rename/list worksheets |
| `Example_MergeWorkbooks.rb` | Local merge; `PostWorkbooksMergeRequest` |
| `Example_SplitWorkbook.rb` | Local split zip; `split_remote_spreadsheet` |
| `Example_TextProcessing.rb` | Local and cloud text replacement |
| `Example_Protection.rb` | `PostProtectWorkbookRequest` / `DeleteUnProtectWorkbookRequest` |
| `Example_GetWorksheetCell.rb` | `GetWorksheetCellRequest` |
| `Example_CalculateFormula.rb` | `PostWorkbookCalculateFormulaRequest` |

## Notes

- Import paths: `AsposeCellsCloud::Converter`, `AsposeCellsCloud::Editor`,
  `AsposeCellsCloud::Searcher`, `AsposeCellsCloud::Dataprocessing`,
  `AsposeCellsCloud::Datasource`, `AsposeCellsCloud::<Request>`,
  `AsposeCellsCloud::<Model>`.
- Inputs/outputs use `Datasource::FilePathSource` / `Datasource::FilePathSink`
  (or `Datasource::BytesSource` / `Datasource::BytesSink`); facades write
  response bytes to the sink.
- `client.upload_file(remote_path, local_path)` takes the remote path first.
  `client.download_file(remote_path)` returns binary bytes.
- In the v4.0 API a local split returns a zip archive; a local merge merges
  the worksheets of one workbook. Use the remote variants to merge separate
  cloud files or split into a cloud folder.
