# NioPokitDoc

NioPokitDoc is an Elixir wrapper for the PokitDoc API.

## Installation
Add `nio_pokit_doc` to your list of dependencies in `mix.exs`:
```
def deps do
[{:nio_pokit_doc, git: "https://github.com/maxnevians/nio_pokit_doc.git"}]
end
```

and also to your applications in `mix.exs`:
```
[applications: [..., :nio_pokit_doc]]
```

## Usage

##### Credentials

To start using the API you need to provider a `:pokit_doc_key` and a `:pokit_doc_secret` as part of your configuration for `:nio_pokit_doc`. The application will raise an error if you do not provide these. Ex:

```
config :nio_pokit_doc, pokit_doc_key: "XXXX"
config :nio_pokit_doc, pokit_doc_secret: "XXXX"
```

##### Functions

All functions are available on the root `NioPokitDoc` module. Ex.

`NioPokitDoc.icd_convert("250.12")`

returns a struct with the resulting information. Similarly

`NioPokitDoc.plans(%{state: "TX"})`

returns a collection of structs containing the search result.

The naming convention should mirror the endpoints found here:

https://platform.pokitdok.com/documentation/v4/

### ToDo

Not all API calls are implemented - here is completion list:

- [X] Activities
- [ ] Authorizations
- [ ] Benefits Enrollment
- [ ] Enrollment Snapshot
- [X] Cash Prices
- [ ] Claims
- [ ] Claims Convert
- [ ] Claims Status
- [X] Eligibility
- [ ] Files
- [X] ICD Convert
- [ ] Identity Management
- [X] Insurance Prices
- [X] Medical Procedure Code
- [X] Plans
- [X] Providers
- [ ] Referrals
- [ ] Scheduling
- [X] Trading Partners

### Version
0.5.1

License
----
MIT
