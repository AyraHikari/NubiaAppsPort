.class Lcom/zte/mifavor/widget/TabLayoutZTE$1;
.super Ljava/lang/Object;
.source "TabLayoutZTE.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/TabLayoutZTE;->setTabSelectListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/TabLayoutZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/TabLayoutZTE;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/zte/mifavor/widget/TabLayoutZTE$1;->this$0:Lcom/zte/mifavor/widget/TabLayoutZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 180
    iget-object p0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE$1;->this$0:Lcom/zte/mifavor/widget/TabLayoutZTE;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->setTabViewForState(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 170
    iget-object p0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE$1;->this$0:Lcom/zte/mifavor/widget/TabLayoutZTE;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->setTabViewForState(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 175
    iget-object p0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE$1;->this$0:Lcom/zte/mifavor/widget/TabLayoutZTE;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->setTabViewForState(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method
