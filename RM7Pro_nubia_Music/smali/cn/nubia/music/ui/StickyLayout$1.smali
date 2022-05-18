.class Lcn/nubia/music/ui/StickyLayout$1;
.super Ljava/lang/Object;
.source "StickyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/ui/StickyLayout;->smoothSetHeaderHeight(IIJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:F

.field final synthetic e:Z

.field final synthetic f:Lcn/nubia/music/ui/StickyLayout;


# direct methods
.method constructor <init>(Lcn/nubia/music/ui/StickyLayout;IIIFZ)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcn/nubia/music/ui/StickyLayout$1;->f:Lcn/nubia/music/ui/StickyLayout;

    iput p2, p0, Lcn/nubia/music/ui/StickyLayout$1;->a:I

    iput p3, p0, Lcn/nubia/music/ui/StickyLayout$1;->b:I

    iput p4, p0, Lcn/nubia/music/ui/StickyLayout$1;->c:I

    iput p5, p0, Lcn/nubia/music/ui/StickyLayout$1;->d:F

    iput-boolean p6, p0, Lcn/nubia/music/ui/StickyLayout$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 255
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcn/nubia/music/ui/StickyLayout$1;->a:I

    if-ge v0, v1, :cond_1

    .line 257
    iget v1, p0, Lcn/nubia/music/ui/StickyLayout$1;->a:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 258
    iget v1, p0, Lcn/nubia/music/ui/StickyLayout$1;->b:I

    .line 262
    :goto_1
    iget-object v2, p0, Lcn/nubia/music/ui/StickyLayout$1;->f:Lcn/nubia/music/ui/StickyLayout;

    new-instance v3, Lcn/nubia/music/ui/StickyLayout$1$1;

    invoke-direct {v3, p0, v1}, Lcn/nubia/music/ui/StickyLayout$1$1;-><init>(Lcn/nubia/music/ui/StickyLayout$1;I)V

    invoke-virtual {v2, v3}, Lcn/nubia/music/ui/StickyLayout;->post(Ljava/lang/Runnable;)Z

    .line 268
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    iget v1, p0, Lcn/nubia/music/ui/StickyLayout$1;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/music/ui/StickyLayout$1;->d:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1

    .line 269
    :catch_0
    move-exception v1

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 274
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/music/ui/StickyLayout$1;->e:Z

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcn/nubia/music/ui/StickyLayout$1;->f:Lcn/nubia/music/ui/StickyLayout;

    iget v1, p0, Lcn/nubia/music/ui/StickyLayout$1;->b:I

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/StickyLayout;->setOriginalHeaderHeight(I)V

    .line 277
    :cond_2
    return-void
.end method
