.class final Lb/a/b/b/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/b/b/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/b/b/b;->c(Lb/a/b/b/a;Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
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

    .line 1
    iput-object p1, p0, Lb/a/b/b/b$b;->a:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2
    iget-object v2, p0, Lb/a/b/b/b$b;->a:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    const/4 v2, 0x2

    .line 4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_1

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_2

    .line 5
    :cond_1
    iget-object v4, p0, Lb/a/b/b/b$b;->a:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 6
    iget-object v0, p0, Lb/a/b/b/b$b;->a:Landroid/content/ContentValues;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lb/a/b/b/b$b;->a:Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resolution"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
