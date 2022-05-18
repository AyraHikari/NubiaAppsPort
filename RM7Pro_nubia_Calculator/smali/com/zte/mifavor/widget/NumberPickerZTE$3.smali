.class Lcom/zte/mifavor/widget/NumberPickerZTE$3;
.super Ljava/lang/Object;
.source "NumberPickerZTE.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$3;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 591
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$3;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$400(Lcom/zte/mifavor/widget/NumberPickerZTE;Landroid/view/View;)V

    :cond_0
    return-void
.end method
