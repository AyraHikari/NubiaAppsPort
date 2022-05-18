.class Lcn/nubia/video/mediaeditorview/o/a$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediaeditorview/o/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/o/a;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/o/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a$b;->a:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a$b;->a:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-static {v0, p1}, Lcn/nubia/video/mediaeditorview/o/a;->c(Lcn/nubia/video/mediaeditorview/o/a;I)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a$b;->a:Lcn/nubia/video/mediaeditorview/o/a;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcn/nubia/video/mediaeditorview/o/a;->d(Lcn/nubia/video/mediaeditorview/o/a;J)J

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a$b;->a:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-static {p1, v0, v1}, Lcn/nubia/video/mediaeditorview/o/a;->e(Lcn/nubia/video/mediaeditorview/o/a;J)J

    return-void
.end method
