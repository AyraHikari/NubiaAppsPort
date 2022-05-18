.class Lcn/nubia/music/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MainActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/MainActivity;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcn/nubia/music/MainActivity$7;->a:Lcn/nubia/music/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 312
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 321
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 323
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 315
    :pswitch_0
    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 318
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
