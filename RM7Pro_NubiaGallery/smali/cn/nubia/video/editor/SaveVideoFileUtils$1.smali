.class final Lcn/nubia/video/editor/SaveVideoFileUtils$1;
.super Ljava/lang/Object;
.source "SaveVideoFileUtils.java"

# interfaces
.implements Lcn/nubia/video/editor/SaveVideoFileUtils$ContentResolverQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/editor/SaveVideoFileUtils;->getSaveDirectory(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dir:[Ljava/io/File;


# direct methods
.method constructor <init>([Ljava/io/File;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcn/nubia/video/editor/SaveVideoFileUtils$1;->val$dir:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCursorResult(Landroid/database/Cursor;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcn/nubia/video/editor/SaveVideoFileUtils$1;->val$dir:[Ljava/io/File;

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
