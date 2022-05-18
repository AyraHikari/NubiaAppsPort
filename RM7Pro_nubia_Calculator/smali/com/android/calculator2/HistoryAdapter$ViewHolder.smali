.class public Lcom/android/calculator2/HistoryAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/HistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private mDate:Landroid/widget/TextView;

.field private mDivider:Landroid/view/View;

.field private mDivider2:Landroid/view/View;

.field private mDivider3:Landroid/view/View;

.field private mFormula:Lcom/android/calculator2/AlignedTextView;

.field private mGroupPadding:Landroid/view/View;

.field private mResult:Lcom/android/calculator2/CalculatorResult;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 241
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const p2, 0x7f0a00de

    .line 245
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mDate:Landroid/widget/TextView;

    const p2, 0x7f0a00e2

    .line 246
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/calculator2/AlignedTextView;

    iput-object p2, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mFormula:Lcom/android/calculator2/AlignedTextView;

    const p2, 0x7f0a00e9

    .line 247
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/calculator2/CalculatorResult;

    iput-object p2, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mResult:Lcom/android/calculator2/CalculatorResult;

    const p2, 0x7f0a00df

    .line 248
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mDivider:Landroid/view/View;

    const p2, 0x7f0a00e0

    .line 249
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mDivider2:Landroid/view/View;

    const p2, 0x7f0a00e1

    .line 250
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mDivider3:Landroid/view/View;

    const p2, 0x7f0a00e5

    .line 251
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mGroupPadding:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Lcom/android/calculator2/AlignedTextView;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mFormula:Lcom/android/calculator2/AlignedTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Lcom/android/calculator2/CalculatorResult;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mResult:Lcom/android/calculator2/CalculatorResult;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mDivider:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mDivider2:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mDivider3:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mGroupPadding:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getDate()Landroid/widget/TextView;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mDate:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDivider()Landroid/view/View;
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mDivider:Landroid/view/View;

    return-object p0
.end method

.method public getDivider2()Landroid/view/View;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mDivider2:Landroid/view/View;

    return-object p0
.end method

.method public getDivider3()Landroid/view/View;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mDivider3:Landroid/view/View;

    return-object p0
.end method

.method public getFormula()Lcom/android/calculator2/AlignedTextView;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mFormula:Lcom/android/calculator2/AlignedTextView;

    return-object p0
.end method

.method public getGroupPadding()Landroid/view/View;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mGroupPadding:Landroid/view/View;

    return-object p0
.end method

.method public getResult()Lcom/android/calculator2/CalculatorResult;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->mResult:Lcom/android/calculator2/CalculatorResult;

    return-object p0
.end method
