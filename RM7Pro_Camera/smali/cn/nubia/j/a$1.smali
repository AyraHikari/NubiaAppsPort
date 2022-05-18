.class Lcn/nubia/j/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/j/a;


# direct methods
.method constructor <init>(Lcn/nubia/j/a;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcn/nubia/j/a$1;->a:Lcn/nubia/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    .line 271
    iget-object v0, p0, Lcn/nubia/j/a$1;->a:Lcn/nubia/j/a;

    invoke-static {v0}, Lcn/nubia/j/a;->a(Lcn/nubia/j/a;)Landroid/media/SoundPool;

    move-result-object v0

    const-string v1, "MediaActionSound"

    if-nez v0, :cond_0

    const-string p1, "SoundPool has been released"

    .line 272
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 276
    iget-object p3, p0, Lcn/nubia/j/a$1;->a:Lcn/nubia/j/a;

    invoke-static {p3}, Lcn/nubia/j/a;->b(Lcn/nubia/j/a;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    move v1, p2

    .line 277
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 278
    iget-object p1, p0, Lcn/nubia/j/a$1;->a:Lcn/nubia/j/a;

    invoke-static {p1}, Lcn/nubia/j/a;->b(Lcn/nubia/j/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to load sound "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "for playback (status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
