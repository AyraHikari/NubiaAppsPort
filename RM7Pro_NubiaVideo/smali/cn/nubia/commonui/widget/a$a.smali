.class Lcn/nubia/commonui/widget/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/a;-><init>(Ljava/util/ArrayList;Lcn/nubia/video/list/app/a;Lcn/nubia/commonui/widget/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/a$c;

.field final synthetic b:Lcn/nubia/commonui/widget/a;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/a;Lcn/nubia/commonui/widget/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/commonui/widget/a$a;->b:Lcn/nubia/commonui/widget/a;

    iput-object p2, p0, Lcn/nubia/commonui/widget/a$a;->a:Lcn/nubia/commonui/widget/a$c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/nubia/commonui/widget/a$a;->b:Lcn/nubia/commonui/widget/a;

    invoke-static {v0}, Lcn/nubia/commonui/widget/a;->a(Lcn/nubia/commonui/widget/a;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/commonui/widget/a$a;->a:Lcn/nubia/commonui/widget/a$c;

    iget-object v0, p0, Lcn/nubia/commonui/widget/a$a;->b:Lcn/nubia/commonui/widget/a;

    invoke-static {v0}, Lcn/nubia/commonui/widget/a;->b(Lcn/nubia/commonui/widget/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/nubia/commonui/widget/a$c;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
