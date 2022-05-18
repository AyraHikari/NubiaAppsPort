.class public abstract Lcom/nubia/nucms/network/frame/NuCmsJsonParser;
.super Ljava/lang/Object;
.source "NuCmsJsonParser.java"


# static fields
.field private static json:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/nubia/nucms/network/frame/NuCmsJsonParser;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->json:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/nubia/nucms/network/frame/NuCmsGsonImpl;

    invoke-direct {v0}, Lcom/nubia/nucms/network/frame/NuCmsGsonImpl;-><init>()V

    sput-object v0, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->json:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    .line 40
    :cond_0
    sget-object v0, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->json:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    return-object v0
.end method

.method public static set(Lcom/nubia/nucms/network/frame/NuCmsJsonParser;)Lcom/nubia/nucms/network/frame/NuCmsJsonParser;
    .locals 1
    .param p0, "json"    # Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    .prologue
    .line 19
    sput-object p0, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->json:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    .line 20
    sget-object v0, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->json:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    return-object v0
.end method

.method public static setDefault()Lcom/nubia/nucms/network/frame/NuCmsJsonParser;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/nubia/nucms/network/frame/NuCmsGsonImpl;

    invoke-direct {v0}, Lcom/nubia/nucms/network/frame/NuCmsGsonImpl;-><init>()V

    sput-object v0, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->json:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    .line 28
    sget-object v0, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->json:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    return-object v0
.end method


# virtual methods
.method public abstract toJson(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract toObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract toObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract toObject([BLjava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method
