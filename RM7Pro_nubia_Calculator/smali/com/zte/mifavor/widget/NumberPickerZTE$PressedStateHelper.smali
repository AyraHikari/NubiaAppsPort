.class Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPickerZTE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1

.field private static final MODE_PRESS:I = 0x1

.field private static final MODE_TAPPED:I = 0x2


# instance fields
.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0

    .line 2564
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 2

    .line 2589
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    .line 2590
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mMode:I

    .line 2591
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    .line 2592
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2593
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    .line 2592
    invoke-virtual {p1, p0, v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    .line 2597
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    .line 2598
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mMode:I

    .line 2599
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    .line 2600
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    const/4 v0, 0x0

    .line 2575
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mMode:I

    .line 2576
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    .line 2577
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2578
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1200(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2579
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1202(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z

    .line 2580
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    .line 2582
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1402(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z

    .line 2583
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1400(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2584
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v2

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result p0

    invoke-virtual {v1, v0, v0, v2, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    .line 2605
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2625
    :pswitch_0
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 2637
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1400(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2638
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2639
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 2638
    invoke-virtual {v0, p0, v3, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2641
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1400(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1402(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z

    .line 2642
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v1

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    goto :goto_0

    .line 2627
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1200(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2628
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2629
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 2628
    invoke-virtual {v0, p0, v3, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2631
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1200(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1202(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z

    .line 2632
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2633
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getBottom()I

    move-result p0

    .line 2632
    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    goto :goto_0

    .line 2607
    :pswitch_3
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2615
    :pswitch_4
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1402(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z

    .line 2616
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v1

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    goto :goto_0

    .line 2609
    :pswitch_5
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1202(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z

    .line 2610
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2611
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getBottom()I

    move-result p0

    .line 2610
    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
