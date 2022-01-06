---
layout: wiki.njk
title: django-rest-framework
date: Created
---

# Serialization
A way to serialize model instances into representations.
The process of making a streamable representation of the data
which we can transfer over the network.

Serializer calsses can also include reusable validators that are applied to the complete set of field data. These validators are included by declaring them on an inner **Meta class.**

# Deserialization
Is the reverse process for serialization. Allows parsed data to be converted back into complex types after first validating the incoming data.
# Validators
When deserializing data, you always ineed to call is_valid() before attempting to access the validated data, or save an object instance.

.errors property will contain a dictionary representing the resulting error messages.

## .errors
Each key in the dictionary will be a field name, and the values will be lists of strings of any error message corresponding to that field.

## non_field_errors 
This key may also be present, and will list any general validation errors.

When deserializing an list of items, errors will be returned as a list of dictionaries representing each of the derserialized items.

# Token Authentication
Token authentication refers to exchanging username and password for a token that will be used in all subsequent requests so to identify the user on the server side. 


# Basic Authentication
HTTP Basic Authentication. Good for testing.

# AUTH_USER_MODEL
https://docs.djangoproject.com/en/4.0/topics/auth/customizing/

You cannot change the AUTH_USER_MODEL setting during the lifetime of a project (i.e. once you have made and migrated models that depend on it) without serious effort. It is intended to be set at the project start, and the model it refers to must be available in the first migration of the app that it lives in. See Substituting a custom User model for more details.

When you define a foreign key or many-to-many relations to the user model, you should specify the custom model using the AUTH_USER_MODEL setting. For example:


# MANAGERS

A Manager is the interface through which database query operations are provided to Django models.
 At least one Manager exists for every model.

 The way maanger lcsses work is documented in Making Queries



# Signals
It's a signal dispatcher that helpes decoupled applications get notified when actions occur elsewhere in the framework.

Signals allow certain senders to notify a set of receivers that some action has taken place.

## Listening

To receive a signal, register a receiver function. The receiver function is called when the signal is sent.


# Logger
An entry point into the logging system. Each logger is a named bucket to which messages can be written for processing.

A logger is configured to have a log level. Debug, Info, Warning, ect.

Each message is written to the logger as a Log Record. Each log record also has a log level indicating the severity of that specific message.

A log record can also contain useful metadat that describes the event that is bieng logged. It can include a stacktrace.

## Handlers
The engine that determines what happens to each message in a logger. It describes a particular logging behavior such as writing am essage to the screen, to a file, or to a network socket.

Like loggers, handlers also have a log level. If the log level doesn't meet or exceed the level of the handler, it will be ignored.


A logger can have multiple handlers, and each handler can have diffeerent log elvel. In this way, it's possible to provide different forms of notification.


## Filters

Provide additional control over which log records are passed from a logger to handler. 

By default, any log message that meets log level requirements will be handled. However, by instaling a filter you can place additiona criteria on the logging process.


## Formatters

Ultimately a log record needs to be rendered as text. Formatters describe the exact format of that text.

## Configuring Logging

Python's logging library provides several technicuqes to configure logging. 

In order to configure logging. you use LOGGING to define a dictionary of logging settings. These settings describe the loggers, handlers, filters, and formatters that you want in your logging setup, the log levels and other properties we want those components to have.

By default, LOGGING setting is merged with Django's default logging config.