.class Lcom/google/android/material/picker/MonthsPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "MonthsPagerAdapter.java"


# instance fields
.field private final firstPage:Lcom/google/android/material/picker/Month;

.field private final gridSelector:Lcom/google/android/material/picker/GridSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/picker/GridSelector<",
            "*>;"
        }
    .end annotation
.end field

.field private final lastPage:Lcom/google/android/material/picker/Month;

.field private final observingFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final onDayClickListener:Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;

.field private final startIndex:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/google/android/material/picker/GridSelector;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/google/android/material/picker/GridSelector<",
            "*>;",
            "Lcom/google/android/material/picker/Month;",
            "Lcom/google/android/material/picker/Month;",
            "Lcom/google/android/material/picker/Month;",
            "Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 38
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->observingFragments:Landroid/util/SparseArray;

    .line 64
    invoke-virtual {p3, p5}, Lcom/google/android/material/picker/Month;->compareTo(Lcom/google/android/material/picker/Month;)I

    move-result p1

    if-gtz p1, :cond_1

    .line 67
    invoke-virtual {p5, p4}, Lcom/google/android/material/picker/Month;->compareTo(Lcom/google/android/material/picker/Month;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 70
    iput-object p3, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->firstPage:Lcom/google/android/material/picker/Month;

    .line 71
    iput-object p4, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->lastPage:Lcom/google/android/material/picker/Month;

    .line 72
    invoke-virtual {p3, p5}, Lcom/google/android/material/picker/Month;->monthsUntil(Lcom/google/android/material/picker/Month;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->startIndex:I

    .line 73
    iput-object p2, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    .line 74
    iput-object p6, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->onDayClickListener:Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;

    return-void

    .line 68
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "startPage cannot be after lastPage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "firstPage cannot be after startPage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 109
    iget-object v0, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->observingFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->observingFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/google/android/material/picker/MonthsPagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 114
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->firstPage:Lcom/google/android/material/picker/Month;

    iget-object p0, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->lastPage:Lcom/google/android/material/picker/Month;

    invoke-virtual {v0, p0}, Lcom/google/android/material/picker/Month;->monthsUntil(Lcom/google/android/material/picker/Month;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MonthsPagerAdapter;->getItem(I)Lcom/google/android/material/picker/MonthFragment;

    move-result-object p0

    return-object p0
.end method

.method public getItem(I)Lcom/google/android/material/picker/MonthFragment;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->firstPage:Lcom/google/android/material/picker/Month;

    .line 93
    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/Month;->monthsLater(I)Lcom/google/android/material/picker/Month;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    invoke-static {v0, v1}, Lcom/google/android/material/picker/MonthFragment;->newInstance(Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/GridSelector;)Lcom/google/android/material/picker/MonthFragment;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/google/android/material/picker/MonthsPagerAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/material/picker/MonthsPagerAdapter$1;-><init>(Lcom/google/android/material/picker/MonthsPagerAdapter;Lcom/google/android/material/picker/MonthFragment;)V

    .line 102
    invoke-virtual {p0, v1}, Lcom/google/android/material/picker/MonthsPagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 103
    iget-object p0, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->observingFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method getPageMonth(I)Lcom/google/android/material/picker/Month;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->firstPage:Lcom/google/android/material/picker/Month;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/Month;->monthsLater(I)Lcom/google/android/material/picker/Month;

    move-result-object p0

    return-object p0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MonthsPagerAdapter;->getPageMonth(I)Lcom/google/android/material/picker/Month;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/picker/Month;->getLongName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getStartPosition()I
    .locals 0

    .line 119
    iget p0, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->startIndex:I

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroidx/fragment/app/Fragment;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 85
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/MonthFragment;

    .line 86
    iget-object p0, p0, Lcom/google/android/material/picker/MonthsPagerAdapter;->onDayClickListener:Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;

    invoke-virtual {p1, p0}, Lcom/google/android/material/picker/MonthFragment;->setOnDayClickListener(Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;)V

    return-object p1
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/picker/MonthsPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method
