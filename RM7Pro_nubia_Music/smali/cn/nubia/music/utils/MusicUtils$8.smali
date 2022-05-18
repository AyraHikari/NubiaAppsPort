.class final Lcn/nubia/music/utils/MusicUtils$8;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/MusicUtils;->setCallRingtoneImpl(Landroid/content/Context;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 1564
    iput-object p1, p0, Lcn/nubia/music/utils/MusicUtils$8;->a:Landroid/content/Context;

    iput p2, p0, Lcn/nubia/music/utils/MusicUtils$8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 1569
    iget-object v0, p0, Lcn/nubia/music/utils/MusicUtils$8;->a:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/music/utils/MusicUtils$8;->b:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcn/nubia/music/utils/MusicUtils;->access$400(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 1570
    return-void
.end method
