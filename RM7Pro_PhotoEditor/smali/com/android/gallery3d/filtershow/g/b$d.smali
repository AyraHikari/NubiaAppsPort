.class final Lcom/android/gallery3d/filtershow/g/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/g/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/g/b;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/content/ContentValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/g/b$d;->a:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/g/b$d;->a:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double p1, v0, v4

    if-nez p1, :cond_0

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/g/b$d;->a:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/g/b$d;->a:Landroid/content/ContentValues;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_1
    return-void
.end method
