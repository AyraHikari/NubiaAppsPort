.class public interface abstract annotation Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/Descriptor;
.super Ljava/lang/Object;
.source "Descriptor.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/Descriptor;
        objectTypeIndication = -0x1
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract objectTypeIndication()I
.end method

.method public abstract tags()[I
.end method
