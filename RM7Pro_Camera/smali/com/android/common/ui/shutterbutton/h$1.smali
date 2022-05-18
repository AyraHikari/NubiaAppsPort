.class Lcom/android/common/ui/shutterbutton/h$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/ui/shutterbutton/h;->a(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/res/Resources;

.field final synthetic b:Lcom/android/common/ui/shutterbutton/h;


# direct methods
.method constructor <init>(Lcom/android/common/ui/shutterbutton/h;Landroid/content/res/Resources;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/h$1;->b:Lcom/android/common/ui/shutterbutton/h;

    iput-object p2, p0, Lcom/android/common/ui/shutterbutton/h$1;->a:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/h$1;->b:Lcom/android/common/ui/shutterbutton/h;

    invoke-static {v0}, Lcom/android/common/ui/shutterbutton/h;->a(Lcom/android/common/ui/shutterbutton/h;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/h$1;->b:Lcom/android/common/ui/shutterbutton/h;

    invoke-static {v1}, Lcom/android/common/ui/shutterbutton/h;->a(Lcom/android/common/ui/shutterbutton/h;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/h$1;->b:Lcom/android/common/ui/shutterbutton/h;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/h$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->w:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/ui/shutterbutton/h;->a(Lcom/android/common/ui/shutterbutton/h;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 188
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/h$1;->b:Lcom/android/common/ui/shutterbutton/h;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/h$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->n:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/ui/shutterbutton/h;->b(Lcom/android/common/ui/shutterbutton/h;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 189
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/h$1;->b:Lcom/android/common/ui/shutterbutton/h;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/h$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->f:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/ui/shutterbutton/h;->c(Lcom/android/common/ui/shutterbutton/h;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 190
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/h$1;->b:Lcom/android/common/ui/shutterbutton/h;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/h$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->x:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/ui/shutterbutton/h;->d(Lcom/android/common/ui/shutterbutton/h;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 191
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/h$1;->b:Lcom/android/common/ui/shutterbutton/h;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/ui/shutterbutton/h;->a(Lcom/android/common/ui/shutterbutton/h;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 193
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
