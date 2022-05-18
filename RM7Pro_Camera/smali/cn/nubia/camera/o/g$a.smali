.class Lcn/nubia/camera/o/g$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/o/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/o/g;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/o/g;Landroid/os/Looper;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcn/nubia/camera/o/g$a;->a:Lcn/nubia/camera/o/g;

    .line 145
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 149
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 171
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/camera/o/g$a;->a:Lcn/nubia/camera/o/g;

    iget-object p1, p1, Lcn/nubia/camera/o/g;->a:Lcn/nubia/camera/o/c$a;

    invoke-interface {p1}, Lcn/nubia/camera/o/c$a;->a()V

    goto :goto_1

    .line 168
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/camera/o/g$a;->a:Lcn/nubia/camera/o/g;

    iget-object p1, p1, Lcn/nubia/camera/o/g;->a:Lcn/nubia/camera/o/c$a;

    invoke-interface {p1}, Lcn/nubia/camera/o/c$a;->b()V

    goto :goto_1

    .line 165
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/camera/o/g$a;->a:Lcn/nubia/camera/o/g;

    iget-object p1, p1, Lcn/nubia/camera/o/g;->a:Lcn/nubia/camera/o/c$a;

    invoke-interface {p1}, Lcn/nubia/camera/o/c$a;->c()V

    goto :goto_1

    .line 151
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/camera/o/g$a;->a:Lcn/nubia/camera/o/g;

    invoke-static {p1}, Lcn/nubia/camera/o/g;->a(Lcn/nubia/camera/o/g;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/o/g$a;->a:Lcn/nubia/camera/o/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/o/g;->a(Lcn/nubia/camera/o/g;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 153
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 154
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 155
    iget-object v1, p0, Lcn/nubia/camera/o/g$a;->a:Lcn/nubia/camera/o/g;

    invoke-static {v1}, Lcn/nubia/camera/o/g;->b(Lcn/nubia/camera/o/g;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/common/c/f$b;

    if-eqz v2, :cond_0

    const-string v3, "ElectronicFnoRenderer"

    const-string v4, "handlemessage"

    .line 157
    invoke-static {v3, v4}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v3, p0, Lcn/nubia/camera/o/g$a;->a:Lcn/nubia/camera/o/g;

    invoke-static {v3}, Lcn/nubia/camera/o/g;->c(Lcn/nubia/camera/o/g;)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/o/g$a;->a:Lcn/nubia/camera/o/g;

    invoke-static {v4}, Lcn/nubia/camera/o/g;->d(Lcn/nubia/camera/o/g;)I

    move-result v4

    invoke-interface {v2, p1, v3, v4, v0}, Lcom/android/common/c/f$b;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 159
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 162
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/o/g$a;->a:Lcn/nubia/camera/o/g;

    invoke-static {p1}, Lcn/nubia/camera/o/g;->b(Lcn/nubia/camera/o/g;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
