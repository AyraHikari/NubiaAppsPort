.class public Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;
.super Ljava/lang/Object;
.source "HttpRequestor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/util/encode/HttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpRequestorResult"
.end annotation


# instance fields
.field private result:Ljava/lang/String;

.field private statusCode:I

.field final synthetic this$0:Lcn/nubia/upgrade/util/encode/HttpRequestor;


# direct methods
.method private constructor <init>(Lcn/nubia/upgrade/util/encode/HttpRequestor;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;->this$0:Lcn/nubia/upgrade/util/encode/HttpRequestor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput p2, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;->statusCode:I

    .line 237
    iput-object p3, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;->result:Ljava/lang/String;

    .line 238
    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/upgrade/util/encode/HttpRequestor;ILjava/lang/String;Lcn/nubia/upgrade/util/encode/HttpRequestor$1;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;-><init>(Lcn/nubia/upgrade/util/encode/HttpRequestor;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;->statusCode:I

    return v0
.end method
