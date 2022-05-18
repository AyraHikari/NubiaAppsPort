.class Lcom/zte/mifavor/widget/TabLayoutZTE$PagerAdapterIconTabObserver;
.super Landroid/database/DataSetObserver;
.source "TabLayoutZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/TabLayoutZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterIconTabObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/TabLayoutZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/TabLayoutZTE;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/zte/mifavor/widget/TabLayoutZTE$PagerAdapterIconTabObserver;->this$0:Lcom/zte/mifavor/widget/TabLayoutZTE;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE$PagerAdapterIconTabObserver;->this$0:Lcom/zte/mifavor/widget/TabLayoutZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->access$000(Lcom/zte/mifavor/widget/TabLayoutZTE;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE$PagerAdapterIconTabObserver;->this$0:Lcom/zte/mifavor/widget/TabLayoutZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->access$000(Lcom/zte/mifavor/widget/TabLayoutZTE;)V

    return-void
.end method
