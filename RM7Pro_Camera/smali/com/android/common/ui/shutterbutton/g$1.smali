.class Lcom/android/common/ui/shutterbutton/g$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/ui/shutterbutton/g;->a(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/res/Resources;

.field final synthetic b:Lcom/android/common/ui/shutterbutton/g;


# direct methods
.method constructor <init>(Lcom/android/common/ui/shutterbutton/g;Landroid/content/res/Resources;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/g$1;->b:Lcom/android/common/ui/shutterbutton/g;

    iput-object p2, p0, Lcom/android/common/ui/shutterbutton/g$1;->a:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g$1;->b:Lcom/android/common/ui/shutterbutton/g;

    iget-object v0, v0, Lcom/android/common/ui/shutterbutton/g;->f:Ljava/lang/Boolean;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g$1;->b:Lcom/android/common/ui/shutterbutton/g;

    iget-object v1, v1, Lcom/android/common/ui/shutterbutton/g;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g$1;->b:Lcom/android/common/ui/shutterbutton/g;

    invoke-static {v1}, Lcom/android/common/ui/shutterbutton/g;->a(Lcom/android/common/ui/shutterbutton/g;)Lcom/android/common/ui/shutterbutton/b;

    move-result-object v1

    sget-object v2, Lcom/android/common/ui/shutterbutton/b;->b:Lcom/android/common/ui/shutterbutton/b;

    if-ne v1, v2, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g$1;->b:Lcom/android/common/ui/shutterbutton/g;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/g$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->s:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/common/ui/shutterbutton/g;->b:Landroid/graphics/Bitmap;

    .line 171
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g$1;->b:Lcom/android/common/ui/shutterbutton/g;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/g$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->q:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/common/ui/shutterbutton/g;->c:Landroid/graphics/Bitmap;

    .line 172
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g$1;->b:Lcom/android/common/ui/shutterbutton/g;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/g$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->p:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/common/ui/shutterbutton/g;->d:Landroid/graphics/Bitmap;

    .line 173
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g$1;->b:Lcom/android/common/ui/shutterbutton/g;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/g$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->w:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/common/ui/shutterbutton/g;->e:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g$1;->b:Lcom/android/common/ui/shutterbutton/g;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/g$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->t:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/common/ui/shutterbutton/g;->b:Landroid/graphics/Bitmap;

    .line 176
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g$1;->b:Lcom/android/common/ui/shutterbutton/g;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/g$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->r:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/common/ui/shutterbutton/g;->c:Landroid/graphics/Bitmap;

    .line 177
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g$1;->b:Lcom/android/common/ui/shutterbutton/g;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/g$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->p:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/common/ui/shutterbutton/g;->d:Landroid/graphics/Bitmap;

    .line 178
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g$1;->b:Lcom/android/common/ui/shutterbutton/g;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/g$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->f:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/common/ui/shutterbutton/g;->e:Landroid/graphics/Bitmap;

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g$1;->b:Lcom/android/common/ui/shutterbutton/g;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/common/ui/shutterbutton/g;->f:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_1
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 184
    invoke-static {}, Lcom/android/common/ui/i;->a()V

    .line 185
    throw v1

    .line 187
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
