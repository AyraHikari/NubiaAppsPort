.class public Lcn/nubia/touping/AdjustQualityActivity;
.super Landroid/app/Activity;
.source "AdjustQualityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "[AdjustQualityActivity]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 47
    :pswitch_0
    const-string v0, "positive"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/touping/AdjustQualityActivity;->finish()V

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-virtual {p0}, Lcn/nubia/touping/AdjustQualityActivity;->finish()V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x7f0e009d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const-string v4, "[AdjustQualityActivity]"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const v4, 0x7f04001b

    invoke-virtual {p0, v4}, Lcn/nubia/touping/AdjustQualityActivity;->setContentView(I)V

    .line 22
    const v4, 0x7f0e009e

    invoke-virtual {p0, v4}, Lcn/nubia/touping/AdjustQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 23
    .local v2, "mPositiveBn":Landroid/view/View;
    const v4, 0x7f0e009d

    invoke-virtual {p0, v4}, Lcn/nubia/touping/AdjustQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 24
    .local v1, "mNegativeBn":Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {p0}, Lcn/nubia/touping/AdjustQualityActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 28
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcn/nubia/touping/AdjustQualityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->orientation:I

    .line 29
    .local v3, "orientation":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 30
    invoke-virtual {p0}, Lcn/nubia/touping/AdjustQualityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    :goto_0
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 32
    invoke-virtual {p0}, Lcn/nubia/touping/AdjustQualityActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 33
    invoke-virtual {p0}, Lcn/nubia/touping/AdjustQualityActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x51

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 34
    return-void

    .line 30
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 39
    const-string v0, "[AdjustQualityActivity]"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
