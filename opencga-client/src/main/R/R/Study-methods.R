
# WARNING: AUTOGENERATED CODE
#
#    This code was generated by a tool.
#    Autogenerated on: 2023-01-10 10:57:29
#    
#    Manual changes to this file may cause unexpected behavior in your application.
#    Manual changes to this file will be overwritten if the code is regenerated.


# ##############################################################################
#' StudyClient methods
#' @include AllClasses.R
#' @include AllGenerics.R
#' @include commons.R

#' @description This function implements the OpenCGA calls for managing Studies.

#' The following table summarises the available *actions* for this client:
#'
#' | endpointName | Endpoint WS | parameters accepted |
#' | -- | :-- | --: |
#' | updateAcl | /{apiVersion}/studies/acl/{members}/update | members[*], action[*], body[*] |
#' | create | /{apiVersion}/studies/create | include, exclude, project, includeResult, body[*] |
#' | search | /{apiVersion}/studies/search | include, exclude, limit, skip, count, project[*], name, id, alias, fqn, creationDate, modificationDate, internalStatus, status, attributes, release |
#' | acl | /{apiVersion}/studies/{studies}/acl | studies[*], member, silent |
#' | aggregationStats | /{apiVersion}/studies/{studies}/aggregationStats | studies[*], default, fileFields, individualFields, familyFields, sampleFields, cohortFields, jobFields |
#' | info | /{apiVersion}/studies/{studies}/info | include, exclude, studies[*] |
#' | searchAudit | /{apiVersion}/studies/{study}/audit/search | include, exclude, limit, skip, count, study[*], operationId, userId, action, resource, resourceId, resourceUuid, status, date |
#' | groups | /{apiVersion}/studies/{study}/groups | study[*], id, silent |
#' | updateGroups | /{apiVersion}/studies/{study}/groups/update | study[*], action, body[*] |
#' | updateGroupsUsers | /{apiVersion}/studies/{study}/groups/{group}/users/update | study[*], group[*], action, body[*] |
#' | permissionRules | /{apiVersion}/studies/{study}/permissionRules | study[*], entity[*] |
#' | updatePermissionRules | /{apiVersion}/studies/{study}/permissionRules/update | study[*], entity[*], action, body[*] |
#' | runTemplates | /{apiVersion}/studies/{study}/templates/run | study[*], jobId, jobDependsOn, jobDescription, jobTags, body[*] |
#' | uploadTemplates | /{apiVersion}/studies/{study}/templates/upload | file, study[*] |
#' | deleteTemplates | /{apiVersion}/studies/{study}/templates/{templateId}/delete | study, templateId[*] |
#' | update | /{apiVersion}/studies/{study}/update | include, exclude, study[*], includeResult, body[*] |
#' | variableSets | /{apiVersion}/studies/{study}/variableSets | study[*], id |
#' | updateVariableSets | /{apiVersion}/studies/{study}/variableSets/update | study[*], action, body[*] |
#' | updateVariableSetsVariables | /{apiVersion}/studies/{study}/variableSets/{variableSet}/variables/update | study[*], variableSet[*], action, body[*] |
#'
#' @md
#' @seealso \url{http://docs.opencb.org/display/opencga/Using+OpenCGA} and the RESTful API documentation
#' \url{http://bioinfo.hpc.cam.ac.uk/opencga-prod/webservices/}
#' [*]: Required parameter
#' @export

setMethod("studyClient", "OpencgaR", function(OpencgaR, variableSet, members, group, studies, templateId, study, endpointName, params=NULL, ...) {
    switch(endpointName,

        #' @section Endpoint /{apiVersion}/studies/acl/{members}/update:
        #' Update the set of permissions granted for the member.
        #' @param members Comma separated list of user or group ids.
        #' @param action Action to be performed [ADD, SET, REMOVE or RESET]. Allowed values: ['SET ADD REMOVE RESET']
        #' @param data JSON containing the parameters to modify ACLs. 'template' could be either 'admin', 'analyst' or 'view_only'.
        updateAcl=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=NULL, subcategory="acl",
                subcategoryId=members, action="update", params=params, httpMethod="POST", as.queryParam=c("action"),
                ...),

        #' @section Endpoint /{apiVersion}/studies/create:
        #' Create a new study.
        #' @param include Fields included in the response, whole JSON path must be provided.
        #' @param exclude Fields excluded in the response, whole JSON path must be provided.
        #' @param project Project [user@]project where project can be either the ID or the alias.
        #' @param includeResult Flag indicating to include the created or updated document result in the response.
        #' @param data study.
        create=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=NULL, subcategory=NULL, subcategoryId=NULL,
                action="create", params=params, httpMethod="POST", as.queryParam=NULL, ...),

        #' @section Endpoint /{apiVersion}/studies/search:
        #' Search studies.
        #' @param include Fields included in the response, whole JSON path must be provided.
        #' @param exclude Fields excluded in the response, whole JSON path must be provided.
        #' @param limit Number of results to be returned.
        #' @param skip Number of results to skip.
        #' @param count Get the total number of results matching the query. Deactivated by default.
        #' @param project Project [user@]project where project can be either the ID or the alias.
        #' @param name Study name.
        #' @param id Study ID.
        #' @param alias Study alias.
        #' @param fqn Study full qualified name.
        #' @param creationDate Creation date. Format: yyyyMMddHHmmss. Examples: >2018, 2017-2018, <201805.
        #' @param modificationDate Modification date. Format: yyyyMMddHHmmss. Examples: >2018, 2017-2018, <201805.
        #' @param internalStatus Filter by internal status.
        #' @param status Filter by status.
        #' @param attributes Attributes.
        #' @param release Release value.
        search=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=NULL, subcategory=NULL, subcategoryId=NULL,
                action="search", params=params, httpMethod="GET", as.queryParam=c("project"), ...),

        #' @section Endpoint /{apiVersion}/studies/{studies}/acl:
        #' Return the acl of the study. If member is provided, it will only return the acl for the member.
        #' @param studies Comma separated list of Studies [[user@]project:]study where study and project can be either the ID or UUID up to a maximum of 100.
        #' @param member User or group id.
        #' @param silent Boolean to retrieve all possible entries that are queried for, false to raise an exception whenever one of the entries looked for cannot be shown for whichever reason.
        acl=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=studies, subcategory=NULL, subcategoryId=NULL,
                action="acl", params=params, httpMethod="GET", as.queryParam=NULL, ...),

        #' @section Endpoint /{apiVersion}/studies/{studies}/aggregationStats:
        #' Fetch catalog study stats.
        #' @param studies Comma separated list of studies [[user@]project:]study up to a maximum of 100.
        #' @param default Calculate default stats.
        #' @param fileFields List of file fields separated by semicolons, e.g.: studies;type. For nested fields use >>, e.g.: studies>>biotype;type.
        #' @param individualFields List of individual fields separated by semicolons, e.g.: studies;type. For nested fields use >>, e.g.: studies>>biotype;type.
        #' @param familyFields List of family fields separated by semicolons, e.g.: studies;type. For nested fields use >>, e.g.: studies>>biotype;type.
        #' @param sampleFields List of sample fields separated by semicolons, e.g.: studies;type. For nested fields use >>, e.g.: studies>>biotype;type.
        #' @param cohortFields List of cohort fields separated by semicolons, e.g.: studies;type. For nested fields use >>, e.g.: studies>>biotype;type.
        #' @param jobFields List of job fields separated by semicolons, e.g.: studies;type. For nested fields use >>, e.g.: studies>>biotype;type.
        aggregationStats=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=studies, subcategory=NULL,
                subcategoryId=NULL, action="aggregationStats", params=params, httpMethod="GET", as.queryParam=NULL,
                ...),

        #' @section Endpoint /{apiVersion}/studies/{studies}/info:
        #' Fetch study information.
        #' @param include Fields included in the response, whole JSON path must be provided.
        #' @param exclude Fields excluded in the response, whole JSON path must be provided.
        #' @param studies Comma separated list of Studies [[user@]project:]study where study and project can be either the ID or UUID up to a maximum of 100.
        info=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=studies, subcategory=NULL,
                subcategoryId=NULL, action="info", params=params, httpMethod="GET", as.queryParam=NULL, ...),

        #' @section Endpoint /{apiVersion}/studies/{study}/audit/search:
        #' Search audit collection.
        #' @param include Fields included in the response, whole JSON path must be provided.
        #' @param exclude Fields excluded in the response, whole JSON path must be provided.
        #' @param limit Number of results to be returned.
        #' @param skip Number of results to skip.
        #' @param count Get the total number of results matching the query. Deactivated by default.
        #' @param study Study ID.
        #' @param operationId Audit operation UUID.
        #' @param userId User ID.
        #' @param action Action performed by the user.
        #' @param resource Resource involved. Allowed values: ['AUDIT USER PROJECT STUDY FILE SAMPLE JOB INDIVIDUAL COHORT DISEASE_PANEL FAMILY CLINICAL_ANALYSIS INTERPRETATION VARIANT ALIGNMENT CLINICAL EXPRESSION RGA FUNCTIONAL']
        #' @param resourceId Resource ID.
        #' @param resourceUuid resource UUID.
        #' @param status Filter by status. Allowed values: ['SUCCESS ERROR']
        #' @param date Date. Format: yyyyMMddHHmmss. Examples: >2018, 2017-2018, <201805.
        searchAudit=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=study, subcategory="audit",
                subcategoryId=NULL, action="search", params=params, httpMethod="GET", as.queryParam=NULL, ...),

        #' @section Endpoint /{apiVersion}/studies/{study}/groups:
        #' Return the groups present in the study. For owners and administrators only.
        #' @param study Study [[user@]project:]study where study and project can be either the ID or UUID.
        #' @param id Group id. If provided, it will only fetch information for the provided group.
        #' @param silent Boolean to retrieve all possible entries that are queried for, false to raise an exception whenever one of the entries looked for cannot be shown for whichever reason.
        groups=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=study, subcategory=NULL,
                subcategoryId=NULL, action="groups", params=params, httpMethod="GET", as.queryParam=NULL, ...),

        #' @section Endpoint /{apiVersion}/studies/{study}/groups/update:
        #' Add or remove a group.
        #' @param study Study [[user@]project:]study where study and project can be either the ID or UUID.
        #' @param action Action to be performed: ADD or REMOVE a group. Allowed values: ['ADD REMOVE']
        #' @param data JSON containing the parameters.
        updateGroups=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=study, subcategory="groups",
                subcategoryId=NULL, action="update", params=params, httpMethod="POST", as.queryParam=NULL, ...),

        #' @section Endpoint /{apiVersion}/studies/{study}/groups/{group}/users/update:
        #' Add, set or remove users from an existing group.
        #' @param study Study [[user@]project:]study where study and project can be either the ID or UUID.
        #' @param group Group name.
        #' @param action Action to be performed: ADD, SET or REMOVE users to/from a group. Allowed values: ['ADD SET REMOVE']
        #' @param data JSON containing the parameters.
        updateGroupsUsers=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=study, subcategory="groups",
                subcategoryId=group, action="users/update", params=params, httpMethod="POST", as.queryParam=NULL, ...),

        #' @section Endpoint /{apiVersion}/studies/{study}/permissionRules:
        #' Fetch permission rules.
        #' @param study Study [[user@]project:]study where study and project can be either the ID or UUID.
        #' @param entity Entity where the permission rules should be applied to. Allowed values: ['SAMPLES FILES COHORTS INDIVIDUALS FAMILIES JOBS CLINICAL_ANALYSES DISEASE_PANELS']
        permissionRules=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=study, subcategory=NULL,
                subcategoryId=NULL, action="permissionRules", params=params, httpMethod="GET",
                as.queryParam=c("entity"), ...),

        #' @section Endpoint /{apiVersion}/studies/{study}/permissionRules/update:
        #' Add or remove a permission rule.
        #' @param study Study [[user@]project:]study where study and project can be either the ID or UUID.
        #' @param entity Entity where the permission rules should be applied to. Allowed values: ['SAMPLES FILES COHORTS INDIVIDUALS FAMILIES JOBS CLINICAL_ANALYSES DISEASE_PANELS']
        #' @param action Action to be performed: ADD to add a new permission rule; REMOVE to remove all permissions assigned by an existing permission rule (even if it overlaps any manual permission); REVERT to remove all permissions assigned by an existing permission rule (keep manual overlaps); NONE to remove an existing permission rule without removing any permissions that could have been assigned already by the permission rule. Allowed values: ['ADD REMOVE REVERT NONE']
        #' @param data JSON containing the permission rule to be created or removed.
        updatePermissionRules=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=study,
                subcategory="permissionRules", subcategoryId=NULL, action="update", params=params, httpMethod="POST",
                as.queryParam=c("entity"), ...),

        #' @section Endpoint /{apiVersion}/studies/{study}/templates/run:
        #' Execute template.
        #' @param study Study [[user@]project:]study where study and project can be either the ID or UUID.
        #' @param jobId Job ID. It must be a unique string within the study. An ID will be autogenerated automatically if not provided.
        #' @param jobDependsOn Comma separated list of existing job IDs the job will depend on.
        #' @param jobDescription Job description.
        #' @param jobTags Job tags.
        #' @param data Template loader parameters.
        runTemplates=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=study, subcategory="templates",
                subcategoryId=NULL, action="run", params=params, httpMethod="POST", as.queryParam=NULL, ...),

        #' @section Endpoint /{apiVersion}/studies/{study}/templates/upload:
        #' Resource to upload a zipped template.
        #' @param file File to upload.
        #' @param study Study [[user@]project:]study where study and project can be either the ID or UUID.
        uploadTemplates=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=study, subcategory="templates",
                subcategoryId=NULL, action="upload", params=params, httpMethod="POST", as.queryParam=NULL, ...),

        #' @section Endpoint /{apiVersion}/studies/{study}/templates/{templateId}/delete:
        #' Delete template.
        #' @param study Study [[user@]project:]study where study and project can be either the ID or UUID.
        #' @param templateId Template id.
        deleteTemplates=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=study, subcategory="templates",
                subcategoryId=templateId, action="delete", params=params, httpMethod="DELETE", as.queryParam=NULL, ...),

        #' @section Endpoint /{apiVersion}/studies/{study}/update:
        #' Update some study attributes.
        #' @param include Fields included in the response, whole JSON path must be provided.
        #' @param exclude Fields excluded in the response, whole JSON path must be provided.
        #' @param study Study [[user@]project:]study where study and project can be either the ID or UUID.
        #' @param includeResult Flag indicating to include the created or updated document result in the response.
        #' @param data JSON containing the params to be updated.
        update=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=study, subcategory=NULL,
                subcategoryId=NULL, action="update", params=params, httpMethod="POST", as.queryParam=NULL, ...),

        #' @section Endpoint /{apiVersion}/studies/{study}/variableSets:
        #' Fetch variableSets from a study.
        #' @param study Study [[user@]project:]study where study and project can be either the ID or UUID.
        #' @param id Id of the variableSet to be retrieved. If no id is passed, it will show all the variableSets of the study.
        variableSets=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=study, subcategory=NULL,
                subcategoryId=NULL, action="variableSets", params=params, httpMethod="GET", as.queryParam=NULL, ...),

        #' @section Endpoint /{apiVersion}/studies/{study}/variableSets/update:
        #' Add or remove a variableSet.
        #' @param study Study [[user@]project:]study where study and project can be either the ID or UUID.
        #' @param action Action to be performed: ADD, REMOVE or FORCE_REMOVE a variableSet. Allowed values: ['ADD REMOVE FORCE_REMOVE']
        #' @param data JSON containing the VariableSet to be created or removed.
        updateVariableSets=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=study,
                subcategory="variableSets", subcategoryId=NULL, action="update", params=params, httpMethod="POST",
                as.queryParam=NULL, ...),

        #' @section Endpoint /{apiVersion}/studies/{study}/variableSets/{variableSet}/variables/update:
        #' Add or remove variables to a VariableSet.
        #' @param study Study [[user@]project:]study where study and project can be either the ID or UUID.
        #' @param variableSet VariableSet id of the VariableSet to be updated.
        #' @param action Action to be performed: ADD or REMOVE a variable. Allowed values: ['ADD REMOVE']
        #' @param data JSON containing the variable to be added or removed. For removing, only the variable id will be needed.
        updateVariableSetsVariables=fetchOpenCGA(object=OpencgaR, category="studies", categoryId=study,
                subcategory="variableSets", subcategoryId=variableSet, action="variables/update", params=params,
                httpMethod="POST", as.queryParam=NULL, ...),
    )
})