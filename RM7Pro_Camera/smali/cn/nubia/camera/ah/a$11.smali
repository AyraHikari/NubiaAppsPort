.class Lcn/nubia/camera/ah/a$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ah/a;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/camera/ah/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ah/a;I)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    iput p2, p0, Lcn/nubia/camera/ah/a$11;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 497
    iget v0, p0, Lcn/nubia/camera/ah/a$11;->a:I

    const v1, 0x7f0f0058

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 532
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->e(Lcn/nubia/camera/ah/a;)I

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->j(Lcn/nubia/camera/ah/a;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0151

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 535
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->j(Lcn/nubia/camera/ah/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 522
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->e(Lcn/nubia/camera/ah/a;)I

    move-result v0

    if-nez v0, :cond_1

    .line 523
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->j(Lcn/nubia/camera/ah/a;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f014e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 525
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->j(Lcn/nubia/camera/ah/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 515
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->e(Lcn/nubia/camera/ah/a;)I

    move-result v0

    if-nez v0, :cond_2

    .line 516
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->j(Lcn/nubia/camera/ah/a;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f014c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 518
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->j(Lcn/nubia/camera/ah/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 506
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->e(Lcn/nubia/camera/ah/a;)I

    move-result v0

    if-nez v0, :cond_3

    .line 507
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->j(Lcn/nubia/camera/ah/a;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f014a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 509
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->j(Lcn/nubia/camera/ah/a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    const v2, 0x7f0f0152

    .line 510
    invoke-virtual {v1, v2}, Lcn/nubia/camera/ah/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    .line 511
    invoke-static {v4}, Lcn/nubia/camera/ah/a;->e(Lcn/nubia/camera/ah/a;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 509
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 499
    :pswitch_5
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->e(Lcn/nubia/camera/ah/a;)I

    move-result v0

    if-nez v0, :cond_4

    .line 500
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->j(Lcn/nubia/camera/ah/a;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0312

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 502
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/ah/a$11;->b:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->j(Lcn/nubia/camera/ah/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
