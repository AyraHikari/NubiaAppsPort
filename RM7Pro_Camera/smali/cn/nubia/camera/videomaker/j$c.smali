.class Lcn/nubia/camera/videomaker/j$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/videomaker/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/videomaker/j;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/videomaker/j;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcn/nubia/camera/videomaker/j$c;->a:Lcn/nubia/camera/videomaker/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/videomaker/j;Lcn/nubia/camera/videomaker/j$1;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/j$c;-><init>(Lcn/nubia/camera/videomaker/j;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 144
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 179
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/camera/videomaker/j$c;->a:Lcn/nubia/camera/videomaker/j;

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/j;->e()V

    .line 180
    iget-object p1, p0, Lcn/nubia/camera/videomaker/j$c;->a:Lcn/nubia/camera/videomaker/j;

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/j;->b()V

    goto :goto_0

    .line 176
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/camera/videomaker/j$c;->a:Lcn/nubia/camera/videomaker/j;

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/j;->e()V

    goto :goto_0

    .line 170
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/camera/videomaker/j$c;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/nubia/camera/videomaker/j$a;->b(Z)V

    goto :goto_0

    .line 167
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/camera/videomaker/j$c;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$a;

    move-result-object p1

    invoke-interface {p1, v1}, Lcn/nubia/camera/videomaker/j$a;->b(Z)V

    goto :goto_0

    .line 173
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/camera/videomaker/j$c;->a:Lcn/nubia/camera/videomaker/j;

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/j;->c()V

    goto :goto_0

    .line 164
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/camera/videomaker/j$c;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/j;->b(Lcn/nubia/camera/videomaker/j;)V

    goto :goto_0

    .line 161
    :pswitch_7
    iget-object p1, p0, Lcn/nubia/camera/videomaker/j$c;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/nubia/camera/videomaker/j$a;->a(Z)V

    goto :goto_0

    .line 158
    :pswitch_8
    iget-object p1, p0, Lcn/nubia/camera/videomaker/j$c;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$a;

    move-result-object p1

    invoke-interface {p1, v1}, Lcn/nubia/camera/videomaker/j$a;->a(Z)V

    goto :goto_0

    .line 155
    :pswitch_9
    iget-object p1, p0, Lcn/nubia/camera/videomaker/j$c;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/videomaker/j$a;->m()V

    goto :goto_0

    .line 152
    :pswitch_a
    iget-object p1, p0, Lcn/nubia/camera/videomaker/j$c;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/videomaker/j$a;->l()V

    goto :goto_0

    .line 149
    :pswitch_b
    iget-object p1, p0, Lcn/nubia/camera/videomaker/j$c;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/videomaker/j$a;->j()V

    goto :goto_0

    .line 146
    :pswitch_c
    iget-object p1, p0, Lcn/nubia/camera/videomaker/j$c;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/videomaker/j$a;->i()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
