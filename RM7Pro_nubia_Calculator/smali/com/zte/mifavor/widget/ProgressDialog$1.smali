.class Lcom/zte/mifavor/widget/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/ProgressDialog;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDialog$1;->this$0:Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 142
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 145
    iget-object p1, p0, Lcom/zte/mifavor/widget/ProgressDialog$1;->this$0:Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-static {p1}, Lcom/zte/mifavor/widget/ProgressDialog;->access$000(Lcom/zte/mifavor/widget/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    .line 146
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog$1;->this$0:Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-static {v0}, Lcom/zte/mifavor/widget/ProgressDialog;->access$000(Lcom/zte/mifavor/widget/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/zte/mifavor/widget/ProgressDialog$1;->this$0:Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDialog;->access$100(Lcom/zte/mifavor/widget/ProgressDialog;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/ProgressDialog$1;->this$0:Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDialog;->access$200(Lcom/zte/mifavor/widget/ProgressDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/zte/mifavor/widget/ProgressDialog$1;->this$0:Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDialog;->access$100(Lcom/zte/mifavor/widget/ProgressDialog;)Ljava/lang/String;

    move-result-object v1

    .line 149
    iget-object v3, p0, Lcom/zte/mifavor/widget/ProgressDialog$1;->this$0:Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDialog;->access$300(Lcom/zte/mifavor/widget/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/ProgressDialog$1;->this$0:Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDialog;->access$300(Lcom/zte/mifavor/widget/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/ProgressDialog$1;->this$0:Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDialog;->access$400(Lcom/zte/mifavor/widget/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v1

    if-eqz v1, :cond_1

    int-to-double v3, p1

    int-to-double v0, v0

    div-double/2addr v3, v0

    .line 155
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog$1;->this$0:Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-static {v0}, Lcom/zte/mifavor/widget/ProgressDialog;->access$400(Lcom/zte/mifavor/widget/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 157
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v3, 0x21

    .line 156
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 158
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog$1;->this$0:Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-static {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->access$500(Lcom/zte/mifavor/widget/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 160
    :cond_1
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDialog$1;->this$0:Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-static {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->access$500(Lcom/zte/mifavor/widget/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
