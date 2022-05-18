.class Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0

    .line 2494
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 2512
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$700(Lcom/zte/mifavor/widget/NumberPickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2513
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$700(Lcom/zte/mifavor/widget/NumberPickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->cancel()V

    .line 2515
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$800(Lcom/zte/mifavor/widget/NumberPickerZTE;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 2516
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2519
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2522
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2523
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p2

    invoke-interface {p4, p6, p2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 2525
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    .line 2528
    :cond_2
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p2, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$900(Lcom/zte/mifavor/widget/NumberPickerZTE;Ljava/lang/String;)I

    move-result p2

    .line 2537
    iget-object p3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result p3

    if-gt p2, p3, :cond_4

    .line 2538
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-le p1, p0, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    const-string p0, ""

    return-object p0

    .line 2544
    :cond_5
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2546
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p0, ""

    return-object p0

    .line 2549
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2550
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p1

    invoke-interface {p4, p6, p1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2551
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 2552
    iget-object p3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$800(Lcom/zte/mifavor/widget/NumberPickerZTE;)[Ljava/lang/String;

    move-result-object p3

    array-length p4, p3

    :goto_1
    if-ge v1, p4, :cond_8

    aget-object p6, p3, v1

    .line 2553
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2554
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2555
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1100(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    .line 2556
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p6, p5, p0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    const-string p0, ""

    return-object p0
.end method

.method protected getAcceptedChars()[C
    .locals 0

    .line 2504
    invoke-static {}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$600()[C

    move-result-object p0

    return-object p0
.end method

.method public getInputType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
