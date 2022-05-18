.class Lcom/nubia/nucms/network/frame/NuCmsGsonImpl;
.super Lcom/nubia/nucms/network/frame/NuCmsJsonParser;
.source "NuCmsGsonImpl.java"


# instance fields
.field private gson:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;-><init>()V

    .line 11
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsGsonImpl;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsGsonImpl;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
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

    .prologue
    .line 20
    .local p2, "claxx":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsGsonImpl;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/reflect/Type;
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

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsGsonImpl;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toObject([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "claxx":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsGsonImpl;->gson:Lcom/google/gson/Gson;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
