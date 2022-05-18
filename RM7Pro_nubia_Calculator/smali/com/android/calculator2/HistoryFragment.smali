.class public Lcom/android/calculator2/HistoryFragment;
.super Landroid/app/Fragment;
.source "HistoryFragment.java"

# interfaces
.implements Lcom/android/calculator2/DragLayout$DragCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/HistoryFragment$ClickBackArrowButtonCallback;
    }
.end annotation


# static fields
.field public static final CLEAR_DIALOG_TAG:Ljava/lang/String; = "clear"

.field public static final TAG:Ljava/lang/String; = "HistoryFragment"


# instance fields
.field private backArrowButtonCallback:Lcom/android/calculator2/HistoryFragment$ClickBackArrowButtonCallback;

.field private currentDarkMode:I

.field private history_more_act:Landroid/view/View;

.field private isEmpty:Z

.field private mAdapter:Lcom/android/calculator2/HistoryAdapter;

.field private mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calculator2/HistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mDragController:Lcom/android/calculator2/DragController;

.field private mDragLayout:Lcom/android/calculator2/DragLayout;

.field private mEvaluator:Lcom/android/calculator2/Evaluator;

.field private mIsDisplayEmpty:Z

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 42
    new-instance v0, Lcom/android/calculator2/DragController;

    invoke-direct {v0}, Lcom/android/calculator2/DragController;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mDragController:Lcom/android/calculator2/DragController;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mDataSet:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calculator2/HistoryFragment;)Lcom/android/calculator2/HistoryFragment$ClickBackArrowButtonCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/calculator2/HistoryFragment;->backArrowButtonCallback:Lcom/android/calculator2/HistoryFragment$ClickBackArrowButtonCallback;

    return-object p0
.end method

.method private initializeController(ZZZ)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mDragController:Lcom/android/calculator2/DragController;

    .line 243
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a00cc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/CalculatorFormula;

    .line 242
    invoke-virtual {v0, v1}, Lcom/android/calculator2/DragController;->setDisplayFormula(Lcom/android/calculator2/CalculatorFormula;)V

    .line 244
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mDragController:Lcom/android/calculator2/DragController;

    .line 245
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0190

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/CalculatorResult;

    .line 244
    invoke-virtual {v0, v1}, Lcom/android/calculator2/DragController;->setDisplayResult(Lcom/android/calculator2/CalculatorResult;)V

    .line 246
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mDragController:Lcom/android/calculator2/DragController;

    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0203

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calculator2/DragController;->setToolbar(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mDragController:Lcom/android/calculator2/DragController;

    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a00af

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/DragController;->setDisplayView(Lcom/android/calculator2/CalculatorDisplay;)V

    .line 248
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mDragController:Lcom/android/calculator2/DragController;

    iget-object v1, p0, Lcom/android/calculator2/HistoryFragment;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/DragController;->setEvaluator(Lcom/android/calculator2/Evaluator;)V

    .line 249
    iget-object p0, p0, Lcom/android/calculator2/HistoryFragment;->mDragController:Lcom/android/calculator2/DragController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calculator2/DragController;->initializeController(ZZZ)V

    return-void
.end method


# virtual methods
.method public getDisplayHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    .line 147
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "HistoryFragment"

    const-string v0, "Aaron: onActivityCreated."

    .line 148
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/Calculator;

    .line 150
    invoke-static {p1}, Lcom/android/calculator2/Evaluator;->getInstance(Landroid/content/Context;)Lcom/android/calculator2/Evaluator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mEvaluator:Lcom/android/calculator2/Evaluator;

    .line 151
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mAdapter:Lcom/android/calculator2/HistoryAdapter;

    iget-object v1, p0, Lcom/android/calculator2/HistoryFragment;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/HistoryAdapter;->setEvaluator(Lcom/android/calculator2/Evaluator;)V

    .line 152
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mAdapter:Lcom/android/calculator2/HistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calculator2/HistoryAdapter;->setContext(Landroid/app/Activity;)V

    .line 154
    invoke-virtual {p1}, Lcom/android/calculator2/Calculator;->isResultLayout()Z

    move-result v0

    .line 155
    invoke-virtual {p1}, Lcom/android/calculator2/Calculator;->isOneLine()Z

    move-result v1

    .line 160
    iget-object v2, p0, Lcom/android/calculator2/HistoryFragment;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorExpr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/calculator2/HistoryFragment;->mIsDisplayEmpty:Z

    .line 163
    iget-boolean v2, p0, Lcom/android/calculator2/HistoryFragment;->mIsDisplayEmpty:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calculator2/HistoryFragment;->initializeController(ZZZ)V

    .line 165
    iget-object v1, p0, Lcom/android/calculator2/HistoryFragment;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v1}, Lcom/android/calculator2/Evaluator;->getMaxIndex()J

    move-result-wide v1

    .line 167
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 169
    iget-boolean v6, p0, Lcom/android/calculator2/HistoryFragment;->mIsDisplayEmpty:Z

    if-nez v6, :cond_2

    if-nez v0, :cond_2

    .line 175
    iget-object v6, p0, Lcom/android/calculator2/HistoryFragment;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v6}, Lcom/android/calculator2/Evaluator;->copyMainToHistory()V

    .line 176
    new-instance v6, Lcom/android/calculator2/HistoryItem;

    const-wide/16 v8, -0x1

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v7, p0, Lcom/android/calculator2/HistoryFragment;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v7, v3, v4}, Lcom/android/calculator2/Evaluator;->getExprAsSpannable(J)Landroid/text/Spannable;

    move-result-object v12

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/calculator2/HistoryItem;-><init>(JJLandroid/text/Spannable;)V

    .line 176
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    cmp-long v6, v3, v1

    if-gez v6, :cond_3

    const/4 v6, 0x0

    .line 180
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    goto :goto_2

    .line 182
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calculator2/HistoryFragment;->isEmpty:Z

    .line 183
    iget-object v1, p0, Lcom/android/calculator2/HistoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, p0, Lcom/android/calculator2/HistoryFragment;->isEmpty:Z

    if-eqz v2, :cond_4

    const v2, 0x7f060142

    goto :goto_3

    :cond_4
    const v2, 0x7f060145

    :goto_3
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 185
    iget-boolean v1, p0, Lcom/android/calculator2/HistoryFragment;->isEmpty:Z

    if-eqz v1, :cond_5

    .line 186
    new-instance v1, Lcom/android/calculator2/HistoryItem;

    invoke-direct {v1}, Lcom/android/calculator2/HistoryItem;-><init>()V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_5
    iput-object v5, p0, Lcom/android/calculator2/HistoryFragment;->mDataSet:Ljava/util/ArrayList;

    .line 189
    iget-object v1, p0, Lcom/android/calculator2/HistoryFragment;->mDataSet:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/calculator2/HistoryFragment;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_7

    .line 190
    :cond_6
    iget-object v1, p0, Lcom/android/calculator2/HistoryFragment;->mAdapter:Lcom/android/calculator2/HistoryAdapter;

    iget-object v2, p0, Lcom/android/calculator2/HistoryFragment;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/calculator2/HistoryAdapter;->setDataSet(Ljava/util/ArrayList;)V

    .line 191
    iget-object v1, p0, Lcom/android/calculator2/HistoryFragment;->mAdapter:Lcom/android/calculator2/HistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/HistoryAdapter;->setIsResultLayout(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mAdapter:Lcom/android/calculator2/HistoryAdapter;

    invoke-virtual {p1}, Lcom/android/calculator2/Calculator;->isOneLine()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/calculator2/HistoryAdapter;->setIsOneLine(Z)V

    .line 193
    iget-object p1, p0, Lcom/android/calculator2/HistoryFragment;->mAdapter:Lcom/android/calculator2/HistoryAdapter;

    iget-boolean v0, p0, Lcom/android/calculator2/HistoryFragment;->mIsDisplayEmpty:Z

    invoke-virtual {p1, v0}, Lcom/android/calculator2/HistoryAdapter;->setIsDisplayEmpty(Z)V

    .line 194
    iget-object p0, p0, Lcom/android/calculator2/HistoryFragment;->mAdapter:Lcom/android/calculator2/HistoryAdapter;

    invoke-virtual {p0}, Lcom/android/calculator2/HistoryAdapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 307
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 310
    :try_start_0
    check-cast p1, Lcom/android/calculator2/HistoryFragment$ClickBackArrowButtonCallback;

    iput-object p1, p0, Lcom/android/calculator2/HistoryFragment;->backArrowButtonCallback:Lcom/android/calculator2/HistoryFragment$ClickBackArrowButtonCallback;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 312
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "HistoryFragment"

    const-string v0, "Aaron: onCreate."

    .line 57
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance p1, Lcom/android/calculator2/HistoryAdapter;

    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mDataSet:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Lcom/android/calculator2/HistoryAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/android/calculator2/HistoryFragment;->mAdapter:Lcom/android/calculator2/HistoryAdapter;

    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/calculator2/HistoryFragment;->mDragLayout:Lcom/android/calculator2/DragLayout;

    invoke-virtual {p0, p2}, Lcom/android/calculator2/DragLayout;->createAnimator(Z)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "HistoryFragment"

    const-string v0, "Aaron: onCreateView."

    .line 64
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, 0x30

    iput p3, p0, Lcom/android/calculator2/HistoryFragment;->currentDarkMode:I

    const-string p3, "HistoryFragment"

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aaron: onCreate(), historyfragment currentDarkMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/calculator2/HistoryFragment;->currentDarkMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 69
    iget p3, p0, Lcom/android/calculator2/HistoryFragment;->currentDarkMode:I

    const/16 v0, 0x10

    const/16 v1, 0x2000

    const/4 v2, 0x0

    if-eq p3, v0, :cond_1

    const/16 v0, 0x20

    if-eq p3, v0, :cond_0

    const-string p3, "HistoryFragment"

    const-string v0, "historyfragment onCreate: case  default:"

    .line 83
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const-string p3, "HistoryFragment"

    const-string v0, "historyfragment onCreate: case Configuration.UI_MODE_NIGHT_YES:"

    .line 80
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const-string p3, "HistoryFragment"

    const-string v0, "historyfragment onCreate:case Configuration.UI_MODE_NIGHT_NO:"

    .line 74
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    sget p3, Lcom/android/calculator2/Calculator;->mod:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    const p3, 0x7f0d0066

    .line 92
    invoke-virtual {p1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    const p3, 0x7f0d0065

    .line 94
    invoke-virtual {p1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 97
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a00b5

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/calculator2/DragLayout;

    iput-object p2, p0, Lcom/android/calculator2/HistoryFragment;->mDragLayout:Lcom/android/calculator2/DragLayout;

    .line 98
    iget-object p2, p0, Lcom/android/calculator2/HistoryFragment;->mDragLayout:Lcom/android/calculator2/DragLayout;

    invoke-virtual {p2, p0}, Lcom/android/calculator2/DragLayout;->addDragCallback(Lcom/android/calculator2/DragLayout$DragCallback;)V

    const p2, 0x7f0a00e8

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/calculator2/HistoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p2, p3, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 103
    iget-object p3, p0, Lcom/android/calculator2/HistoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 105
    iget-object p2, p0, Lcom/android/calculator2/HistoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/android/calculator2/HistoryFragment$1;

    invoke-direct {p3, p0}, Lcom/android/calculator2/HistoryFragment$1;-><init>(Lcom/android/calculator2/HistoryFragment;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 116
    iget-object p2, p0, Lcom/android/calculator2/HistoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 117
    iget-object p2, p0, Lcom/android/calculator2/HistoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/android/calculator2/HistoryFragment;->mAdapter:Lcom/android/calculator2/HistoryAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 118
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 119
    iget-object p2, p0, Lcom/android/calculator2/HistoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 p3, 0x60000

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setDescendantFocusability(I)V

    :cond_3
    const p2, 0x7f0a00e6

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/calculator2/HistoryFragment;->history_more_act:Landroid/view/View;

    .line 123
    iget-object p2, p0, Lcom/android/calculator2/HistoryFragment;->history_more_act:Landroid/view/View;

    new-instance p3, Lcom/android/calculator2/HistoryFragment$2;

    invoke-direct {p3, p0}, Lcom/android/calculator2/HistoryFragment$2;-><init>(Lcom/android/calculator2/HistoryFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a00e7

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 135
    new-instance p3, Lcom/android/calculator2/HistoryFragment$3;

    invoke-direct {p3, p0}, Lcom/android/calculator2/HistoryFragment$3;-><init>(Lcom/android/calculator2/HistoryFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 223
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    const-string v0, "HistoryFragment"

    const-string v1, "Aaron: onDestroy"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mDragLayout:Lcom/android/calculator2/DragLayout;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mDragLayout:Lcom/android/calculator2/DragLayout;

    invoke-virtual {v0, p0}, Lcom/android/calculator2/DragLayout;->removeDragCallback(Lcom/android/calculator2/DragLayout$DragCallback;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mEvaluator:Lcom/android/calculator2/Evaluator;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0}, Lcom/android/calculator2/Evaluator;->cancelNonMain()V

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 237
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onInstanceStateRestored(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 278
    iget-object p0, p0, Lcom/android/calculator2/HistoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 209
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v0, "HistoryFragment"

    const-string v1, "Aaron: onResume"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->history_more_act:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->history_more_act:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/calculator2/HistoryFragment;->isEmpty:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 200
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    const-string v0, "HistoryFragment"

    const-string v1, "Aaron: onStart"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/Calculator;

    .line 203
    iget-object v1, p0, Lcom/android/calculator2/HistoryFragment;->mDragController:Lcom/android/calculator2/DragController;

    invoke-virtual {v0}, Lcom/android/calculator2/Calculator;->isResultLayout()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/calculator2/Calculator;->isOneLine()Z

    move-result v0

    iget-boolean p0, p0, Lcom/android/calculator2/HistoryFragment;->mIsDisplayEmpty:Z

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/calculator2/DragController;->initializeAnimation(ZZZ)V

    return-void
.end method

.method public onStartDraggingOpen()V
    .locals 0

    return-void
.end method

.method public shouldCaptureView(Landroid/view/View;II)Z
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/android/calculator2/HistoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0
.end method

.method public stopActionModeOrContextMenu()Z
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 256
    :goto_0
    iget-object v2, p0, Lcom/android/calculator2/HistoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/android/calculator2/HistoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 258
    iget-object v3, p0, Lcom/android/calculator2/HistoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 259
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/HistoryAdapter$ViewHolder;

    if-eqz v2, :cond_1

    .line 260
    invoke-virtual {v2}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->getResult()Lcom/android/calculator2/CalculatorResult;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 261
    invoke-virtual {v2}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->getResult()Lcom/android/calculator2/CalculatorResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorResult;->stopActionModeOrContextMenu()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public whileDragging(F)V
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment;->mDragController:Lcom/android/calculator2/DragController;

    iget-object p0, p0, Lcom/android/calculator2/HistoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p0}, Lcom/android/calculator2/DragController;->animateViews(FLandroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    return-void
.end method
