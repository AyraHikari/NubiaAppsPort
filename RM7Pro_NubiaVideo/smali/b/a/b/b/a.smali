.class public Lb/a/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/File;

.field public b:Ljava/lang/String;

.field public c:Ljava/io/File;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/a/b/b/a;->a:Ljava/io/File;

    .line 3
    iput-object v0, p0, Lb/a/b/b/a;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lb/a/b/b/a;->c:Ljava/io/File;

    .line 5
    iput-object v0, p0, Lb/a/b/b/a;->d:Ljava/lang/String;

    return-void
.end method
