.class public Lcom/bumptech/glide/f;
.super Lcom/bumptech/glide/e;
.source "GenericTranscodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e",
        "<TModelType;TDataType;TResourceType;TResourceType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/l",
            "<TModelType;TDataType;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TResourceType;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/bumptech/glide/i$c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/g;Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/i$c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/g;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/load/b/l",
            "<TModelType;TDataType;>;",
            "Ljava/lang/Class",
            "<TDataType;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/bumptech/glide/manager/l;",
            "Lcom/bumptech/glide/manager/g;",
            "Lcom/bumptech/glide/i$c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/bumptech/glide/load/resource/e/e;->b()Lcom/bumptech/glide/load/resource/e/c;

    move-result-object v1

    invoke-static {p2, p4, p5, p6, v1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/c;)Lcom/bumptech/glide/e/f;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p6

    move-object v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/e/f;Ljava/lang/Class;Lcom/bumptech/glide/g;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;)V

    .line 62
    iput-object p4, p0, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/load/b/l;

    .line 63
    iput-object p5, p0, Lcom/bumptech/glide/f;->h:Ljava/lang/Class;

    .line 64
    iput-object p6, p0, Lcom/bumptech/glide/f;->i:Ljava/lang/Class;

    .line 65
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/i$c;

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/e;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/i$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/bumptech/glide/e",
            "<TModelType;***>;",
            "Lcom/bumptech/glide/load/b/l",
            "<TModelType;TDataType;>;",
            "Ljava/lang/Class",
            "<TDataType;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/bumptech/glide/i$c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p2, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    invoke-static {}, Lcom/bumptech/glide/load/resource/e/e;->b()Lcom/bumptech/glide/load/resource/e/c;

    move-result-object v1

    invoke-static {v0, p3, p4, p5, v1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/c;)Lcom/bumptech/glide/e/f;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/e;-><init>(Lcom/bumptech/glide/e/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V

    .line 51
    iput-object p3, p0, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/load/b/l;

    .line 52
    iput-object p4, p0, Lcom/bumptech/glide/f;->h:Ljava/lang/Class;

    .line 53
    iput-object p5, p0, Lcom/bumptech/glide/f;->i:Ljava/lang/Class;

    .line 54
    iput-object p6, p0, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/i$c;

    .line 55
    return-void
.end method

.method private static a(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/c;)Lcom/bumptech/glide/e/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/g;",
            "Lcom/bumptech/glide/load/b/l",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Lcom/bumptech/glide/load/resource/e/c",
            "<TZ;TR;>;)",
            "Lcom/bumptech/glide/e/f",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/e/b;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/bumptech/glide/e/e;

    invoke-direct {v1, p1, p4, v0}, Lcom/bumptech/glide/e/e;-><init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/resource/e/c;Lcom/bumptech/glide/e/b;)V

    return-object v1
.end method

.method private a()Lcom/bumptech/glide/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/bumptech/glide/load/resource/e/e;->b()Lcom/bumptech/glide/load/resource/e/c;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/g;

    iget-object v2, p0, Lcom/bumptech/glide/f;->h:Ljava/lang/Class;

    const-class v3, Ljava/io/File;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/e/b;

    move-result-object v1

    .line 102
    new-instance v2, Lcom/bumptech/glide/e/e;

    iget-object v3, p0, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/load/b/l;

    invoke-direct {v2, v3, v0, v1}, Lcom/bumptech/glide/e/e;-><init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/resource/e/c;Lcom/bumptech/glide/e/b;)V

    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/i$c;

    new-instance v1, Lcom/bumptech/glide/e;

    const-class v3, Ljava/io/File;

    invoke-direct {v1, v2, v3, p0}, Lcom/bumptech/glide/e;-><init>(Lcom/bumptech/glide/e/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i$c;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->d:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/e;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->c:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b(Z)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(II)Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/a",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/bumptech/glide/f;->a()Lcom/bumptech/glide/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/e;->d(II)Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method
