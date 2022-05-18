.class public interface abstract Lcn/nubia/upgrade/util/encode/format/FormatData;
.super Ljava/lang/Object;
.source "FormatData.java"


# static fields
.field public static final AUTH_TOKEN_ID:Ljava/lang/String; = "auth_token_id"

.field public static final DEFAULT_INTERVAL_SECOND:I = 0x708

.field public static final FORMAT_DATA_RESULT:Ljava/lang/String; = "format_data_result"

.field public static final FORMAT_DATA_SIGN:Ljava/lang/String; = "format_data_sign"

.field public static final FORMAT_DATA_TIMESTAMP:Ljava/lang/String; = "format_data_timestamp"

.field public static final TIME_STAMP_LENGTH:I = 0x8


# virtual methods
.method public abstract decodeOuput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/upgrade/util/encode/InterceptorClientException;,
            Lcn/nubia/upgrade/util/encode/InterceptorClientException;
        }
    .end annotation
.end method

.method public abstract encodeParms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/upgrade/util/encode/InterceptorClientException;
        }
    .end annotation
.end method
