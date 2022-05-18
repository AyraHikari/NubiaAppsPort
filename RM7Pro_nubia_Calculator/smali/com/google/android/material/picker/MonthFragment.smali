.class public Lcom/google/android/material/picker/MonthFragment;
.super Landroidx/fragment/app/Fragment;
.source "MonthFragment.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final GRID_SELECTOR_KEY:Ljava/lang/String; = "GRID_SELECTOR_KEY"

.field private static final MONTH_KEY:Ljava/lang/String; = "MONTH_KEY"


# instance fields
.field private month:Lcom/google/android/material/picker/Month;

.field private monthAdapter:Lcom/google/android/material/picker/MonthAdapter;

.field private onDayClickListener:Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/MonthFragment;)Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/material/picker/MonthFragment;->onDayClickListener:Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/MonthFragment;)Lcom/google/android/material/picker/MonthAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/material/picker/MonthFragment;->monthAdapter:Lcom/google/android/material/picker/MonthAdapter;

    return-object p0
.end method

.method public static newInstance(Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/GridSelector;)Lcom/google/android/material/picker/MonthFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/picker/Month;",
            "Lcom/google/android/material/picker/GridSelector<",
            "*>;)",
            "Lcom/google/android/material/picker/MonthFragment;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/google/android/material/picker/MonthFragment;

    invoke-direct {v0}, Lcom/google/android/material/picker/MonthFragment;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MONTH_KEY"

    .line 63
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "GRID_SELECTOR_KEY"

    .line 64
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MonthFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method notifyDataSetChanged()V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/material/picker/MonthFragment;->monthAdapter:Lcom/google/android/material/picker/MonthAdapter;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/Month;

    iput-object p1, p0, Lcom/google/android/material/picker/MonthFragment;->month:Lcom/google/android/material/picker/Month;

    .line 73
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/GridSelector;

    .line 74
    new-instance v0, Lcom/google/android/material/picker/MonthAdapter;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/picker/MonthFragment;->month:Lcom/google/android/material/picker/Month;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/material/picker/MonthAdapter;-><init>(Landroid/content/Context;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/GridSelector;)V

    iput-object v0, p0, Lcom/google/android/material/picker/MonthFragment;->monthAdapter:Lcom/google/android/material/picker/MonthAdapter;

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/picker/MonthFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/widget/GridView;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/widget/GridView;
    .locals 1

    .line 80
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 82
    sget p3, Lcom/google/android/material/R$layout;->mtrl_month_grid:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    sget p2, Lcom/google/android/material/R$id;->month_grid:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/MaterialCalendarGridView;

    .line 84
    iget-object p2, p0, Lcom/google/android/material/picker/MonthFragment;->month:Lcom/google/android/material/picker/Month;

    iget p2, p2, Lcom/google/android/material/picker/Month;->daysInWeek:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/MaterialCalendarGridView;->setNumColumns(I)V

    .line 85
    iget-object p2, p0, Lcom/google/android/material/picker/MonthFragment;->monthAdapter:Lcom/google/android/material/picker/MonthAdapter;

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    new-instance p2, Lcom/google/android/material/picker/MonthFragment$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/MonthFragment$1;-><init>(Lcom/google/android/material/picker/MonthFragment;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/MaterialCalendarGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public setOnDayClickListener(Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;)V
    .locals 0
    .param p1    # Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    iput-object p1, p0, Lcom/google/android/material/picker/MonthFragment;->onDayClickListener:Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;

    return-void
.end method
