.class final Lb/a/b/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/b/b/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/b/b/b;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/io/File;


# direct methods
.method constructor <init>([Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/b/b$a;->a:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/b/b/b$a;->a:[Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    aput-object p1, v0, v2

    return-void
.end method
