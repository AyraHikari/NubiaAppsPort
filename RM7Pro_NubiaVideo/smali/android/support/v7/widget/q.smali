.class Landroid/support/v7/widget/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Landroid/graphics/RectF;

.field private static l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Z

.field private c:F

.field private d:F

.field private e:F

.field private f:[I

.field private g:Z

.field private h:Landroid/text/TextPaint;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroid/support/v7/widget/q;->k:Landroid/graphics/RectF;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/support/v7/widget/q;->l:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/v7/widget/q;->a:I

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/widget/q;->b:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    iput v1, p0, Landroid/support/v7/widget/q;->c:F

    .line 5
    iput v1, p0, Landroid/support/v7/widget/q;->d:F

    .line 6
    iput v1, p0, Landroid/support/v7/widget/q;->e:F

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Landroid/support/v7/widget/q;->f:[I

    .line 8
    iput-boolean v0, p0, Landroid/support/v7/widget/q;->g:Z

    .line 9
    iput-object p1, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/q;->j:Landroid/content/Context;

    return-void
.end method

.method private b([I)[I
    .locals 6

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 4
    aget v4, p1, v3

    if-lez v4, :cond_1

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    return-object p1

    .line 8
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    .line 9
    new-array v0, p1, [I

    :goto_1
    if-ge v2, p1, :cond_4

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/support/v7/widget/q;->a:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 2
    iput v1, p0, Landroid/support/v7/widget/q;->d:F

    .line 3
    iput v1, p0, Landroid/support/v7/widget/q;->e:F

    .line 4
    iput v1, p0, Landroid/support/v7/widget/q;->c:F

    new-array v1, v0, [I

    .line 5
    iput-object v1, p0, Landroid/support/v7/widget/q;->f:[I

    .line 6
    iput-boolean v0, p0, Landroid/support/v7/widget/q;->b:Z

    return-void
.end method

.method private d(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const-string v2, "getTextDirectionHeuristic"

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v7/widget/q;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextDirectionHeuristic;

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/q;->h:Landroid/text/TextPaint;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v3, v1, v2, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result p2

    iget-object p3, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p3}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result p3

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p2}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p2}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p2}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 p2, -0x1

    if-ne p4, p2, :cond_0

    const p4, 0x7fffffff

    .line 11
    :cond_0
    invoke-virtual {p1, p4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .locals 11

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v0

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v1

    .line 4
    iget-object v2, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v2

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "getLineSpacingMultiplier"

    .line 7
    invoke-direct {p0, v0, v2, v1}, Landroid/support/v7/widget/q;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 8
    iget-object v1, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 9
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "getLineSpacingExtra"

    .line 10
    invoke-direct {p0, v1, v3, v2}, Landroid/support/v7/widget/q;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 11
    iget-object v2, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    .line 12
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "getIncludeFontPadding"

    .line 13
    invoke-direct {p0, v2, v4, v3}, Landroid/support/v7/widget/q;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    move v8, v0

    move v9, v1

    move v10, v2

    .line 14
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v5, p0, Landroid/support/v7/widget/q;->h:Landroid/text/TextPaint;

    move-object v3, v0

    move-object v4, p1

    move v6, p3

    move-object v7, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private f(Landroid/graphics/RectF;)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/q;->f:[I

    array-length v0, v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    move v4, v2

    move v2, v1

    move v1, v4

    :goto_1
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    .line 2
    div-int/lit8 v2, v2, 0x2

    .line 3
    iget-object v3, p0, Landroid/support/v7/widget/q;->f:[I

    aget v3, v3, v2

    invoke-direct {p0, v3, p1}, Landroid/support/v7/widget/q;->x(ILandroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/q;->f:[I

    aget p1, p1, v2

    return p1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No available text sizes to choose from."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private l(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/q;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    sget-object v1, Landroid/support/v7/widget/q;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve TextView#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() method"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ACTVAutoSizeHelper"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p2}, Landroid/support/v7/widget/q;->l(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "ACTVAutoSizeHelper"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke TextView#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "() method"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object p3

    .line 4
    :goto_1
    throw p1
.end method

.method private s(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isInLayout()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 5
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iput-boolean v1, p0, Landroid/support/v7/widget/q;->b:Z

    :try_start_0
    const-string v0, "nullLayouts"

    .line 7
    invoke-direct {p0, v0}, Landroid/support/v7/widget/q;->l(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v2, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ACTVAutoSizeHelper"

    const-string v2, "Failed to invoke TextView#nullLayouts() method"

    .line 9
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_2

    .line 11
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->forceLayout()V

    .line 12
    :goto_2
    iget-object p1, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :cond_3
    return-void
.end method

.method private u()Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/q;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v7/widget/q;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 2
    iget-boolean v0, p0, Landroid/support/v7/widget/q;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/q;->f:[I

    array-length v0, v0

    if-nez v0, :cond_3

    .line 3
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/q;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    move v3, v2

    .line 4
    :goto_0
    iget v4, p0, Landroid/support/v7/widget/q;->c:F

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/q;->e:F

    .line 5
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-gt v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 6
    iget v4, p0, Landroid/support/v7/widget/q;->c:F

    add-float/2addr v0, v4

    goto :goto_0

    .line 7
    :cond_1
    new-array v0, v3, [I

    .line 8
    iget v4, p0, Landroid/support/v7/widget/q;->d:F

    :goto_1
    if-ge v1, v3, :cond_2

    .line 9
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v0, v1

    .line 10
    iget v5, p0, Landroid/support/v7/widget/q;->c:F

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/q;->b([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/q;->f:[I

    .line 12
    :cond_3
    iput-boolean v2, p0, Landroid/support/v7/widget/q;->b:Z

    goto :goto_2

    .line 13
    :cond_4
    iput-boolean v1, p0, Landroid/support/v7/widget/q;->b:Z

    .line 14
    :goto_2
    iget-boolean v0, p0, Landroid/support/v7/widget/q;->b:Z

    return v0
.end method

.method private v(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2
    new-array v1, v0, [I

    if-lez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, -0x1

    .line 3
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v7/widget/q;->b([I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/q;->f:[I

    .line 5
    invoke-direct {p0}, Landroid/support/v7/widget/q;->w()Z

    :cond_1
    return-void
.end method

.method private w()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/q;->f:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 2
    :goto_0
    iput-boolean v4, p0, Landroid/support/v7/widget/q;->g:Z

    if-eqz v4, :cond_1

    .line 3
    iput v3, p0, Landroid/support/v7/widget/q;->a:I

    .line 4
    aget v2, v0, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/v7/widget/q;->d:F

    sub-int/2addr v1, v3

    .line 5
    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/q;->e:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    iput v0, p0, Landroid/support/v7/widget/q;->c:F

    :cond_1
    return v4
.end method

.method private x(ILandroid/graphics/RectF;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-interface {v1, v0, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 4
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const/4 v3, -0x1

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMaxLines()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 5
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/q;->h:Landroid/text/TextPaint;

    if-nez v4, :cond_2

    .line 6
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    iput-object v4, p0, Landroid/support/v7/widget/q;->h:Landroid/text/TextPaint;

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v4}, Landroid/text/TextPaint;->reset()V

    .line 8
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/q;->h:Landroid/text/TextPaint;

    iget-object v5, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 9
    iget-object v4, p0, Landroid/support/v7/widget/q;->h:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 10
    iget-object p1, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const-string v5, "getLayoutAlignment"

    invoke-direct {p0, p1, v5, v4}, Landroid/support/v7/widget/q;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/Layout$Alignment;

    const/16 v4, 0x17

    if-lt v1, v4, :cond_3

    .line 11
    iget v1, p2, Landroid/graphics/RectF;->right:F

    .line 12
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 13
    invoke-direct {p0, v0, p1, v1, v2}, Landroid/support/v7/widget/q;->d(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object p1

    goto :goto_2

    :cond_3
    iget v1, p2, Landroid/graphics/RectF;->right:F

    .line 14
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 15
    invoke-direct {p0, v0, p1, v1}, Landroid/support/v7/widget/q;->e(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object p1

    :goto_2
    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    .line 16
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-gt v3, v2, :cond_4

    .line 17
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v2, v0, :cond_5

    :cond_4
    return v1

    .line 18
    :cond_5
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    return v1

    :cond_6
    return v4
.end method

.method private y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/support/v7/widget/h;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private z(FFF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const-string v2, "px) is less or equal to (0px)"

    if-lez v1, :cond_2

    cmpg-float v1, p2, p1

    if-lez v1, :cond_1

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Landroid/support/v7/widget/q;->a:I

    .line 2
    iput p1, p0, Landroid/support/v7/widget/q;->d:F

    .line 3
    iput p2, p0, Landroid/support/v7/widget/q;->e:F

    .line 4
    iput p3, p0, Landroid/support/v7/widget/q;->c:F

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroid/support/v7/widget/q;->g:Z

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The auto-size step granularity ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum auto-size text size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "px) is less or equal to minimum auto-size "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "text size ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 8
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Minimum auto-size text size ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/q;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/q;->b:Z

    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    const-string v1, "getHorizontallyScrolling"

    .line 5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/q;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x100000

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 10
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_5

    if-gtz v1, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    sget-object v2, Landroid/support/v7/widget/q;->k:Landroid/graphics/RectF;

    monitor-enter v2

    .line 13
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    int-to-float v0, v0

    .line 14
    iput v0, v2, Landroid/graphics/RectF;->right:F

    int-to-float v0, v1

    .line 15
    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 16
    invoke-direct {p0, v2}, Landroid/support/v7/widget/q;->f(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 17
    iget-object v1, p0, Landroid/support/v7/widget/q;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/q;->t(IF)V

    .line 19
    :cond_4
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Landroid/support/v7/widget/q;->b:Z

    return-void
.end method

.method g()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/q;->e:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method h()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/q;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method i()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/q;->c:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method j()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/q;->f:[I

    return-object v0
.end method

.method k()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/q;->a:I

    return v0
.end method

.method n()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/q;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/q;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method o(Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/q;->j:Landroid/content/Context;

    sget-object v1, La/b/d/a/j;->c0:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget p2, La/b/d/a/j;->h0:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/q;->a:I

    .line 4
    :cond_0
    sget p2, La/b/d/a/j;->g0:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v1

    .line 6
    :goto_0
    sget v0, La/b/d/a/j;->e0:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 8
    :goto_1
    sget v3, La/b/d/a/j;->d0:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v1

    .line 10
    :goto_2
    sget v4, La/b/d/a/j;->f0:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_4

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 13
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 14
    invoke-direct {p0, v4}, Landroid/support/v7/widget/q;->v(Landroid/content/res/TypedArray;)V

    .line 15
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/q;->y()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 18
    iget p1, p0, Landroid/support/v7/widget/q;->a:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_a

    .line 19
    iget-boolean p1, p0, Landroid/support/v7/widget/q;->g:Z

    if-nez p1, :cond_8

    .line 20
    iget-object p1, p0, Landroid/support/v7/widget/q;->j:Landroid/content/Context;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    cmpl-float v2, v0, v1

    const/4 v4, 0x2

    if-nez v2, :cond_5

    const/high16 v0, 0x41400000    # 12.0f

    .line 22
    invoke-static {v4, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    :cond_5
    cmpl-float v2, v3, v1

    if-nez v2, :cond_6

    const/high16 v2, 0x42e00000    # 112.0f

    .line 23
    invoke-static {v4, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    :cond_6
    cmpl-float p1, p2, v1

    if-nez p1, :cond_7

    const/high16 p2, 0x3f800000    # 1.0f

    .line 24
    :cond_7
    invoke-direct {p0, v0, v3, p2}, Landroid/support/v7/widget/q;->z(FFF)V

    .line 25
    :cond_8
    invoke-direct {p0}, Landroid/support/v7/widget/q;->u()Z

    goto :goto_3

    .line 26
    :cond_9
    iput v2, p0, Landroid/support/v7/widget/q;->a:I

    :cond_a
    :goto_3
    return-void
.end method

.method p(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/q;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/q;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 3
    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    .line 4
    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    .line 5
    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/q;->z(FFF)V

    .line 7
    invoke-direct {p0}, Landroid/support/v7/widget/q;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/support/v7/widget/q;->a()V

    :cond_0
    return-void
.end method

.method q([II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/q;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 3
    new-array v2, v0, [I

    if-nez p2, :cond_0

    .line 4
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/q;->j:Landroid/content/Context;

    .line 6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Landroid/support/v7/widget/q;->b([I)[I

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/q;->f:[I

    .line 9
    invoke-direct {p0}, Landroid/support/v7/widget/q;->w()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "None of the preset sizes is valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_3
    iput-boolean v1, p0, Landroid/support/v7/widget/q;->g:Z

    .line 13
    :goto_2
    invoke-direct {p0}, Landroid/support/v7/widget/q;->u()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p0}, Landroid/support/v7/widget/q;->a()V

    :cond_4
    return-void
.end method

.method r(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/q;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/q;->j:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41400000    # 12.0f

    const/4 v1, 0x2

    .line 4
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x42e00000    # 112.0f

    .line 5
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    invoke-direct {p0, v0, p1, v1}, Landroid/support/v7/widget/q;->z(FFF)V

    .line 7
    invoke-direct {p0}, Landroid/support/v7/widget/q;->u()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/support/v7/widget/q;->a()V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown auto-size text type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/q;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method t(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/q;->j:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/q;->s(F)V

    return-void
.end method
