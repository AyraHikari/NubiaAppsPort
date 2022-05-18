.class Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdText"
.end annotation


# instance fields
.field private text:Ljava/lang/String;

.field private textViewId:I

.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1618
    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->text:Ljava/lang/String;

    .line 1619
    return-void
.end method

.method static synthetic access$1400(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    .prologue
    .line 1612
    iget v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->textViewId:I

    return v0
.end method

.method static synthetic access$1402(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;
    .param p1, "x1"    # I

    .prologue
    .line 1612
    iput p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->textViewId:I

    return p1
.end method

.method static synthetic access$1600(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->text:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method setValue(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "needCheck"    # Z

    .prologue
    .line 1622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue textViewId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->textViewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1624
    iget v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->textViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1625
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 1626
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1627
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1628
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1635
    :cond_0
    :goto_0
    return-void

    .line 1630
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1632
    :cond_2
    if-eqz p2, :cond_0

    .line 1633
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u6570\u636e\u548c\u89c6\u56fe\u4e0d\u5339\u914d"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
