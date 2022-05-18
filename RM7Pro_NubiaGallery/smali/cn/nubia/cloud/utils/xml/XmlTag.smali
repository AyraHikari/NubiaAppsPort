.class public interface abstract Lcn/nubia/cloud/utils/xml/XmlTag;
.super Ljava/lang/Object;
.source "XmlTag.java"


# virtual methods
.method public abstract addAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addAttributeResource(Ljava/lang/String;I)V
.end method

.method public abstract addAttributes(Landroid/os/Bundle;)V
.end method

.method public abstract addSubTag(Lcn/nubia/cloud/utils/xml/XmlTag;)V
.end method

.method public abstract getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAttributeResourceValue(Ljava/lang/String;I)I
.end method

.method public abstract getAttributes()Landroid/os/Bundle;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSubTags()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/utils/xml/XmlTag;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract hasSubTags()Z
.end method

.method public abstract recycle()V
.end method
