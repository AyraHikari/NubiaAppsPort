.class Lcom/google/android/material/tabs/TabLayout$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout;->wrapOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;

.field final synthetic val$baseListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$1;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$1;->val$baseListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$1;->val$baseListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {p0, p1}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 819
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$1;->val$baseListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {p0, p1}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 824
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$1;->val$baseListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {p0, p1}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method
