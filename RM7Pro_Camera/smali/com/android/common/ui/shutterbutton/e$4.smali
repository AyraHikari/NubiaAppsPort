.class Lcom/android/common/ui/shutterbutton/e$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/ui/shutterbutton/e;->a(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/res/Resources;

.field final synthetic b:Lcom/android/common/ui/shutterbutton/e;


# direct methods
.method constructor <init>(Lcom/android/common/ui/shutterbutton/e;Landroid/content/res/Resources;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/e$4;->b:Lcom/android/common/ui/shutterbutton/e;

    iput-object p2, p0, Lcom/android/common/ui/shutterbutton/e$4;->a:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/e$4;->b:Lcom/android/common/ui/shutterbutton/e;

    invoke-static {v0}, Lcom/android/common/ui/shutterbutton/e;->c(Lcom/android/common/ui/shutterbutton/e;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/e$4;->b:Lcom/android/common/ui/shutterbutton/e;

    invoke-static {v1}, Lcom/android/common/ui/shutterbutton/e;->c(Lcom/android/common/ui/shutterbutton/e;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/e$4;->b:Lcom/android/common/ui/shutterbutton/e;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/e$4;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->k:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/ui/shutterbutton/e;->a(Lcom/android/common/ui/shutterbutton/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 262
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/e$4;->b:Lcom/android/common/ui/shutterbutton/e;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/e$4;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->i:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/ui/shutterbutton/e;->b(Lcom/android/common/ui/shutterbutton/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 263
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/e$4;->b:Lcom/android/common/ui/shutterbutton/e;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/e$4;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->l:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/ui/shutterbutton/e;->c(Lcom/android/common/ui/shutterbutton/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 264
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/e$4;->b:Lcom/android/common/ui/shutterbutton/e;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/e$4;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->j:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/ui/shutterbutton/e;->d(Lcom/android/common/ui/shutterbutton/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 265
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/e$4;->b:Lcom/android/common/ui/shutterbutton/e;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/e$4;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->m:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/ui/shutterbutton/e;->e(Lcom/android/common/ui/shutterbutton/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 266
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/e$4;->b:Lcom/android/common/ui/shutterbutton/e;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/ui/shutterbutton/e;->a(Lcom/android/common/ui/shutterbutton/e;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 268
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
