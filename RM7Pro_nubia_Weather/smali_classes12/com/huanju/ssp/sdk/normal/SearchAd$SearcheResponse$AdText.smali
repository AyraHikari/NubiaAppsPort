.class Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;
.super Ljava/lang/Object;
.source "SearchAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdText"
.end annotation


# instance fields
.field private text:Ljava/lang/String;

.field private textViewId:I

.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->text:Ljava/lang/String;

    .line 395
    return-void
.end method

.method static synthetic access$200(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    .prologue
    .line 388
    iget v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->textViewId:I

    return v0
.end method

.method static synthetic access$202(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;
    .param p1, "x1"    # I

    .prologue
    .line 388
    iput p1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->textViewId:I

    return p1
.end method

.method static synthetic access$400(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->text:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method setValue(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "needCheck"    # Z

    .prologue
    .line 398
    iget v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->textViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 399
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 400
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 406
    :cond_2
    if-eqz p2, :cond_0

    .line 407
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u6570\u636e\u548c\u89c6\u56fe\u4e0d\u5339\u914d"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
