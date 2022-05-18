.class final Lcn/nubia/music/utils/MusicUtils$6;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/MusicUtils;->setCallRingtone(Landroid/content/Context;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I


# direct methods
.method constructor <init>(JLandroid/content/Context;I)V
    .locals 1

    .prologue
    .line 1428
    iput-wide p1, p0, Lcn/nubia/music/utils/MusicUtils$6;->a:J

    iput-object p3, p0, Lcn/nubia/music/utils/MusicUtils$6;->b:Landroid/content/Context;

    iput p4, p0, Lcn/nubia/music/utils/MusicUtils$6;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1431
    iget-wide v0, p0, Lcn/nubia/music/utils/MusicUtils$6;->a:J

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MusicUtils;->access$300(J)Ljava/lang/String;

    move-result-object v0

    .line 1432
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1433
    iget-object v0, p0, Lcn/nubia/music/utils/MusicUtils$6;->b:Landroid/content/Context;

    const v1, 0x7f0b010c

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 1438
    :goto_0
    return-void

    .line 1436
    :cond_0
    iget v1, p0, Lcn/nubia/music/utils/MusicUtils$6;->c:I

    add-int/lit8 v1, v1, -0x1

    .line 1437
    iget-object v2, p0, Lcn/nubia/music/utils/MusicUtils$6;->b:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcn/nubia/music/utils/MusicUtils;->access$400(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_0
.end method
