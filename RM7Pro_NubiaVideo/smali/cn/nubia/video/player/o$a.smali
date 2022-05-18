.class Lcn/nubia/video/player/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/commonui/app/e$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/o;->i(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/o;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/o$a;->a:Lcn/nubia/video/player/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/video/player/o$a;->a:Lcn/nubia/video/player/o;

    invoke-static {p1}, Lcn/nubia/video/player/o;->d(Lcn/nubia/video/player/o;)V

    goto :goto_0

    .line 2
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/video/player/o$a;->a:Lcn/nubia/video/player/o;

    invoke-static {p1}, Lcn/nubia/video/player/o;->a(Lcn/nubia/video/player/o;)Lcn/nubia/video/player/e;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/player/e;->e()V

    goto :goto_0

    .line 3
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/video/player/o$a;->a:Lcn/nubia/video/player/o;

    invoke-static {p1}, Lcn/nubia/video/player/o;->a(Lcn/nubia/video/player/o;)Lcn/nubia/video/player/e;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/player/e;->o()V

    goto :goto_0

    .line 4
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/video/player/o$a;->a:Lcn/nubia/video/player/o;

    invoke-static {p1}, Lcn/nubia/video/player/o;->a(Lcn/nubia/video/player/o;)Lcn/nubia/video/player/e;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/player/e;->n()V

    goto :goto_0

    .line 5
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/video/player/o$a;->a:Lcn/nubia/video/player/o;

    invoke-static {p1}, Lcn/nubia/video/player/o;->c(Lcn/nubia/video/player/o;)V

    goto :goto_0

    .line 6
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/video/player/o$a;->a:Lcn/nubia/video/player/o;

    invoke-static {p1}, Lcn/nubia/video/player/o;->b(Lcn/nubia/video/player/o;)V

    goto :goto_0

    .line 7
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/video/player/o$a;->a:Lcn/nubia/video/player/o;

    invoke-static {p1}, Lcn/nubia/video/player/o;->a(Lcn/nubia/video/player/o;)Lcn/nubia/video/player/e;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/player/e;->l()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
