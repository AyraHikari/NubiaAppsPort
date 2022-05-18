.class final Lcn/nubia/music/utils/MusicUtils$7;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/MusicUtils;->setCallRingtoneByPath(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 1449
    iput-object p1, p0, Lcn/nubia/music/utils/MusicUtils$7;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/nubia/music/utils/MusicUtils$7;->b:Landroid/content/Context;

    iput p3, p0, Lcn/nubia/music/utils/MusicUtils$7;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1451
    iget-object v0, p0, Lcn/nubia/music/utils/MusicUtils$7;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcn/nubia/music/utils/MusicUtils$7;->b:Landroid/content/Context;

    const v1, 0x7f0b010c

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 1457
    :goto_0
    return-void

    .line 1455
    :cond_0
    iget v0, p0, Lcn/nubia/music/utils/MusicUtils$7;->c:I

    add-int/lit8 v0, v0, -0x1

    .line 1456
    iget-object v1, p0, Lcn/nubia/music/utils/MusicUtils$7;->b:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/music/utils/MusicUtils$7;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcn/nubia/music/utils/MusicUtils;->access$400(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_0
.end method
