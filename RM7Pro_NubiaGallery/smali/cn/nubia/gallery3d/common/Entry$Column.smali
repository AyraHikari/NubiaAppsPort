.class public interface abstract annotation Lcn/nubia/gallery3d/common/Entry$Column;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcn/nubia/gallery3d/common/Entry$Column;
        defaultValue = ""
        fullText = false
        indexed = false
        unique = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/common/Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Column"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract defaultValue()Ljava/lang/String;
.end method

.method public abstract fullText()Z
.end method

.method public abstract indexed()Z
.end method

.method public abstract unique()Z
.end method

.method public abstract value()Ljava/lang/String;
.end method
