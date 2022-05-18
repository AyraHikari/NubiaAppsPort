.class Lcom/hpplay/sdk/source/browse/impl/BrowserManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$1;->a:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$1;->a:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    const-string v0, "BrowserManager"

    const-string v1, " auto stop browse "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$1;->a:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-static {v1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 184
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$1;->a:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->b()V

    .line 183
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$1;->a:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 190
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$1;->a:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->b(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$1;->a:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->b(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$1;->a:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-static {v2}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->c(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/api/IBrowseListener;->onBrowse(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_2
    :goto_1
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "BrowserManager"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
