.class final Lcom/android/gallery3d/filtershow/utils/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/g/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/utils/b;->j(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
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

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/utils/b$a;->a:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/utils/b$a;->a:[Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v2

    return-void
.end method
