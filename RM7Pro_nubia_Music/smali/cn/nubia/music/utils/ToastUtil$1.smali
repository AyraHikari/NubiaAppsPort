.class final Lcn/nubia/music/utils/ToastUtil$1;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcn/nubia/music/utils/ToastUtil$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/music/utils/ToastUtil$1;->b:Ljava/lang/String;

    iput p3, p0, Lcn/nubia/music/utils/ToastUtil$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Lcn/nubia/music/utils/ToastUtil;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 66
    :try_start_0
    invoke-static {}, Lcn/nubia/music/utils/ToastUtil;->access$100()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcn/nubia/music/utils/ToastUtil;->access$100()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 68
    iget-object v0, p0, Lcn/nubia/music/utils/ToastUtil$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/music/utils/ToastUtil$1;->b:Ljava/lang/String;

    iget v3, p0, Lcn/nubia/music/utils/ToastUtil$1;->c:I

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/ToastUtil;->access$102(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 72
    :goto_0
    invoke-static {}, Lcn/nubia/music/utils/ToastUtil;->access$100()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/utils/ToastUtil$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/music/utils/ToastUtil$1;->b:Ljava/lang/String;

    iget v3, p0, Lcn/nubia/music/utils/ToastUtil$1;->c:I

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/ToastUtil;->access$102(Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
