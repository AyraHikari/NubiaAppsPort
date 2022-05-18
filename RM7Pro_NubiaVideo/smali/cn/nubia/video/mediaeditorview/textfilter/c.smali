.class public Lcn/nubia/video/mediaeditorview/textfilter/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->d:F

    return v0
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->a:F

    return v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->c:F

    return v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->b:F

    return v0
.end method

.method public e(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->d:F

    return-void
.end method

.method public f(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->a:F

    return-void
.end method

.method public g(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->c:F

    return-void
.end method

.method public h(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->b:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->d:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->c:F

    iget v3, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->a:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->d:F

    iget v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/c;->b:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
