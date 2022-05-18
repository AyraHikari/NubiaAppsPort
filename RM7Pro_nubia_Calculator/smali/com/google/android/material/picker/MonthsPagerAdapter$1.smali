.class Lcom/google/android/material/picker/MonthsPagerAdapter$1;
.super Landroid/database/DataSetObserver;
.source "MonthsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/MonthsPagerAdapter;->getItem(I)Lcom/google/android/material/picker/MonthFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/MonthsPagerAdapter;

.field final synthetic val$monthFragment:Lcom/google/android/material/picker/MonthFragment;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/MonthsPagerAdapter;Lcom/google/android/material/picker/MonthFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/android/material/picker/MonthsPagerAdapter$1;->this$0:Lcom/google/android/material/picker/MonthsPagerAdapter;

    iput-object p2, p0, Lcom/google/android/material/picker/MonthsPagerAdapter$1;->val$monthFragment:Lcom/google/android/material/picker/MonthFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/material/picker/MonthsPagerAdapter$1;->val$monthFragment:Lcom/google/android/material/picker/MonthFragment;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthFragment;->notifyDataSetChanged()V

    return-void
.end method
