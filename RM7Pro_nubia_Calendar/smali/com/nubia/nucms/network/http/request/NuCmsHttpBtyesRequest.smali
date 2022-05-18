.class public Lcom/nubia/nucms/network/http/request/NuCmsHttpBtyesRequest;
.super Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
.source "NuCmsHttpBtyesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public createDataParser()Lcom/nubia/nucms/network/http/parser/DataParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nubia/nucms/network/http/parser/DataParser",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Lcom/nubia/nucms/network/http/parser/BytesParser;

    invoke-direct {v0}, Lcom/nubia/nucms/network/http/parser/BytesParser;-><init>()V

    return-object v0
.end method
