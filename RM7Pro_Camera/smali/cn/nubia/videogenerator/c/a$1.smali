.class final Lcn/nubia/videogenerator/c/a$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "audio/amr"

    const-string v1, ".amr"

    .line 31
    invoke-virtual {p0, v0, v1}, Lcn/nubia/videogenerator/c/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audio/amr-wb"

    .line 32
    invoke-virtual {p0, v0, v1}, Lcn/nubia/videogenerator/c/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audio/3gpp"

    .line 33
    invoke-virtual {p0, v0, v1}, Lcn/nubia/videogenerator/c/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audio/mp4a-latm"

    const-string v1, ".m4a"

    .line 34
    invoke-virtual {p0, v0, v1}, Lcn/nubia/videogenerator/c/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audio/aac"

    const-string v1, ".aac"

    .line 35
    invoke-virtual {p0, v0, v1}, Lcn/nubia/videogenerator/c/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
