.class public Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;
.super Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
.source "NuCmsHttpStringRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
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

.method public constructor <init>(Ljava/lang/String;Lcom/nubia/nucms/network/frame/NuCmsNetListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, "listener":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;-><init>(Ljava/lang/String;Lcom/nubia/nucms/network/frame/NuCmsNetListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public createDataParser()Lcom/nubia/nucms/network/http/parser/DataParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nubia/nucms/network/http/parser/DataParser",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/nubia/nucms/network/http/parser/StringParser;

    invoke-direct {v0}, Lcom/nubia/nucms/network/http/parser/StringParser;-><init>()V

    return-object v0
.end method
