.class Lcn/nubia/music/app/db/MusicDBHelper$a;
.super Landroid/database/CursorWrapper;
.source "MusicDBHelper.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/db/MusicDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/db/MusicDBHelper;

.field private b:Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Lcn/nubia/music/app/db/MusicDBHelper;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcn/nubia/music/app/db/MusicDBHelper$a;->a:Lcn/nubia/music/app/db/MusicDBHelper;

    .line 279
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 280
    check-cast p2, Landroid/database/CrossProcessCursor;

    iput-object p2, p0, Lcn/nubia/music/app/db/MusicDBHelper$a;->b:Landroid/database/CrossProcessCursor;

    .line 281
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcn/nubia/music/app/db/MusicDBHelper$a;->b:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 285
    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcn/nubia/music/app/db/MusicDBHelper$a;->b:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcn/nubia/music/app/db/MusicDBHelper$a;->b:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
