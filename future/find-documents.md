### Finding Clinical Notes & Patient Documents

Our adaptors supporting this use case will give a consistent

`GET /DocumentReference`

API for each system we have adapted. The adaptors will generally support the following searches:

- `patient` id and NHS Number searches
- `date` ranges
- document `type`

They don't have to implement the diagram below:

<figure>{% include finddocuments.svg %}</figure>
<br clear="all"/>

Details of the standard we follow to do this, can be found in [IHE Mobile access to Health Documents (MHD)](https://profiles.ihe.net/ITI/MHD/index.html)
